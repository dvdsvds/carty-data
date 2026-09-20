#!/usr/bin/env python3
"""Regenerates index.json from categories.json plus the YAML frontmatter
of every file under files/. See the carty README's "카테고리 확장
(기여하기)" section for the frontmatter format this expects.

Run it after adding/editing a file under files/, or let CI do it (see
.github/workflows/generate-index.yml). Never hand-edit index.json's
"items" array directly — it's derived and gets overwritten.
"""
import hashlib
import json
import os
import sys

try:
    import yaml
except ImportError:
    print("error: PyYAML is required (pip install pyyaml)", file=sys.stderr)
    sys.exit(1)

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
FILES_DIR = os.path.join(ROOT, "files")
CATEGORIES_PATH = os.path.join(ROOT, "categories.json")
INDEX_PATH = os.path.join(ROOT, "index.json")

REQUIRED_FIELDS = ["name", "description", "category"]


def parse_frontmatter(path):
    with open(path, encoding="utf-8") as f:
        content = f.read()
    if not content.startswith("---\n"):
        return None
    parts = content.split("---", 2)
    if len(parts) < 3:
        return None
    try:
        meta = yaml.safe_load(parts[1]) or {}
    except yaml.YAMLError as e:
        fail(f"{path}: invalid frontmatter YAML: {e}")
    if not isinstance(meta, dict):
        fail(f"{path}: frontmatter must be a YAML mapping")
    return meta


def sha256_short(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        h.update(f.read())
    return h.hexdigest()[:12]


def fail(msg):
    print(f"error: {msg}", file=sys.stderr)
    sys.exit(1)


def collect_items(category_ids):
    items = []
    for dirpath, _dirnames, filenames in os.walk(FILES_DIR):
        for name in sorted(filenames):
            path = os.path.join(dirpath, name)
            meta = parse_frontmatter(path)
            if meta is None:
                continue

            rel_path = os.path.relpath(path, FILES_DIR).replace(os.sep, "/")

            missing = [k for k in REQUIRED_FIELDS if not meta.get(k)]
            if missing:
                fail(f"{rel_path}: missing frontmatter field(s): {', '.join(missing)}")

            category_id = meta["category"]
            if category_id not in category_ids:
                fail(f"{rel_path}: unknown category {category_id!r} (add it to categories.json first)")

            provides = meta.get("provides") or {}
            if not isinstance(provides, dict):
                fail(f"{rel_path}: provides must be a mapping of aliases/functions")

            items.append({
                "name": meta["name"],
                "description": meta["description"],
                "category_id": category_id,
                "file_path": rel_path,
                "preview_colors": meta.get("preview_colors") or [],
                "provides": {
                    "aliases": provides.get("aliases") or [],
                    "functions": provides.get("functions") or [],
                },
                "version": str(meta.get("version", "1.0.0")),
                "hash": sha256_short(path),
                "depends_on": meta.get("depends_on") or [],
            })

    items.sort(key=lambda it: (it["category_id"], it["name"]))
    return items


def check_dependency_references(items):
    known = {it["file_path"] for it in items}
    for it in items:
        for dep in it["depends_on"]:
            if dep not in known:
                fail(f"{it['file_path']}: depends_on references unknown file_path {dep!r}")


def check_cycles(items):
    by_path = {it["file_path"]: it for it in items}

    def visit(path, chain):
        if path in chain:
            cycle = chain[chain.index(path):] + [path]
            fail("cyclic depends_on: " + " -> ".join(cycle))
        item = by_path[path]
        for dep in item["depends_on"]:
            visit(dep, chain + [path])

    for it in items:
        visit(it["file_path"], [])


def main():
    if not os.path.isfile(CATEGORIES_PATH):
        fail(f"{CATEGORIES_PATH} not found")
    with open(CATEGORIES_PATH, encoding="utf-8") as f:
        categories = json.load(f)

    seen_ids = set()
    for c in categories:
        if c["id"] in seen_ids:
            fail(f"categories.json: duplicate category id {c['id']!r}")
        seen_ids.add(c["id"])

    category_ids = seen_ids

    items = collect_items(category_ids)
    check_dependency_references(items)
    check_cycles(items)

    index = {"categories": categories, "items": items}
    with open(INDEX_PATH, "w", encoding="utf-8") as f:
        json.dump(index, f, ensure_ascii=False, indent=2)
        f.write("\n")

    print(f"generated index.json: {len(categories)} categories, {len(items)} items")


if __name__ == "__main__":
    main()
