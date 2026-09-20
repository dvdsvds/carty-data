---
name: Kanagawa
description: 일본 전통 채색을 모티브로 한 차분한 남색 계열 테마
category: zsh-theme
preview_colors: ["#1f1f28", "#7fb4ca", "#957fb8"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Kanagawa palette (https://github.com/rebelot/kanagawa.nvim)
KN_FG="%F{#dcd7ba}"
KN_WAVE="%F{#7fb4ca}"
KN_VIOLET="%F{#957fb8}"
KN_GREEN="%F{#98bb6c}"
KN_RED="%F{#c34043}"

PROMPT='${KN_WAVE}%~ ${KN_VIOLET}$(git_prompt_info)${KN_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${KN_FG}git:(${KN_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${KN_FG})%f "
