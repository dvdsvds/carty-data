---
name: Everforest
description: 숲을 연상시키는 그린/베이지 톤의 눈에 편안한 테마
category: zsh-theme
preview_colors: ["#2d353b", "#a7c080", "#dbbc7f"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Everforest dark palette (https://github.com/sainnhe/everforest)
EF_FG="%F{#d3c6aa}"
EF_GREEN="%F{#a7c080}"
EF_YELLOW="%F{#dbbc7f}"
EF_AQUA="%F{#83c092}"
EF_RED="%F{#e67e80}"

PROMPT='${EF_AQUA}%~ ${EF_YELLOW}$(git_prompt_info)${EF_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${EF_FG}git:(${EF_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${EF_FG})%f "
