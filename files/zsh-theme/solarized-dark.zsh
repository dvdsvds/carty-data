---
name: Solarized Dark
description: 명도/채도를 과학적으로 맞춘 클래식 다크 팔레트
category: zsh-theme
preview_colors: ["#002b36", "#268bd2", "#2aa198"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Solarized Dark palette (https://ethanschoonover.com/solarized)
SOL_FG="%F{#839496}"
SOL_BLUE="%F{#268bd2}"
SOL_CYAN="%F{#2aa198}"
SOL_GREEN="%F{#859900}"
SOL_RED="%F{#dc322f}"

PROMPT='${SOL_BLUE}%~ ${SOL_CYAN}$(git_prompt_info)${SOL_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${SOL_FG}git:(${SOL_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${SOL_FG})%f "
