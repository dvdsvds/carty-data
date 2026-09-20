---
name: git 브랜치
description: "현재 git 브랜치 표시 (git 저장소 안에서만 보임) — 색은 담을 때 직접 고릅니다"
category: zsh-custom
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
ZSH_THEME_GIT_PROMPT_PREFIX="%F{{{color}}}git:(%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{{{color}}})%f "
PROMPT+='$(git_prompt_info)'
