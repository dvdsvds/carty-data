---
name: Gruvbox Dark
description: 따뜻한 레트로 톤의 베이지/올리브 색감 다크 테마
category: zsh-theme
preview_colors: ["#282828", "#d79921", "#98971a"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Gruvbox dark palette (https://github.com/morhetz/gruvbox)
GB_FG="%F{#ebdbb2}"
GB_YELLOW="%F{#d79921}"
GB_GREEN="%F{#98971a}"
GB_AQUA="%F{#689d6a}"
GB_RED="%F{#cc241d}"

PROMPT='${GB_AQUA}%~ ${GB_YELLOW}$(git_prompt_info)${GB_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${GB_FG}git:(${GB_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${GB_FG})%f "
