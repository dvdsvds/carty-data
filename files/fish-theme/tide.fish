---
name: Tide (간단 버전)
description: 가장 인기 많은 fish 프롬프트 Tide를 간단히 흉내낸 버전 — 실제 Tide는 설치 후 설정 마법사가 필요합니다
category: fish-theme
preview_colors: ["#268bd2", "#859900", "#dc322f"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# Simplified reproduction of Tide's default two-line layout.
# The real thing: https://github.com/IlanCosman/tide (설치 후 `tide configure`)
function fish_prompt
    set -l last_status $status
    set_color blue
    echo -n (prompt_pwd)
    set -l branch (fish_git_prompt)
    if test -n "$branch"
        set_color green
        echo -n " $branch"
    end
    set_color normal
    echo
    if test $last_status -eq 0
        set_color green
    else
        set_color red
    end
    echo -n '❯ '
    set_color normal
end
