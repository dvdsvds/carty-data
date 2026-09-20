---
name: git 브랜치
description: "현재 git 브랜치 표시 (git 저장소 안에서만 보임)"
category: zsh-custom
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
ZSH_THEME_GIT_PROMPT_PREFIX="%K{{{color}}}%F{0} git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %k%f "
PROMPT+='$(git_prompt_info)'
