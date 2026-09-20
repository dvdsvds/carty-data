---
name: Catppuccin Mocha
description: 부드러운 파스텔 톤의 인기 다크 테마 (Mocha 플레이버)
category: zsh-theme
preview_colors: ["#1e1e2e", "#cba6f7", "#89b4fa"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Catppuccin Mocha palette (https://github.com/catppuccin/catppuccin)
CAT_TEXT="%F{#cdd6f4}"
CAT_MAUVE="%F{#cba6f7}"
CAT_BLUE="%F{#89b4fa}"
CAT_GREEN="%F{#a6e3a1}"
CAT_RED="%F{#f38ba8}"

PROMPT='${CAT_BLUE}%~ ${CAT_MAUVE}$(git_prompt_info)${CAT_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${CAT_TEXT}git:(${CAT_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${CAT_TEXT})%f "
