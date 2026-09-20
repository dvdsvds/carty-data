---
name: Nightfox
description: 차갑고 선명한 블루/틸 톤의 다크 테마
category: zsh-theme
preview_colors: ["#192330", "#719cd6", "#81b29a"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Nightfox palette (https://github.com/EdenEast/nightfox.nvim)
NF_FG="%F{#cdcecf}"
NF_BLUE="%F{#719cd6}"
NF_GREEN="%F{#81b29a}"
NF_MAGENTA="%F{#9d79d6}"
NF_RED="%F{#c94f6d}"

PROMPT='${NF_BLUE}%~ ${NF_MAGENTA}$(git_prompt_info)${NF_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${NF_FG}git:(${NF_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${NF_FG})%f "
