---
name: One Dark
description: Atom 에디터에서 유래한 균형 잡힌 다크 테마
category: zsh-theme
preview_colors: ["#282c34", "#61afef", "#98c379"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# One Dark palette (https://github.com/atom/atom/tree/master/packages/one-dark-ui)
OD_FG="%F{#abb2bf}"
OD_BLUE="%F{#61afef}"
OD_GREEN="%F{#98c379}"
OD_PURPLE="%F{#c678dd}"
OD_RED="%F{#e06c75}"

PROMPT='${OD_BLUE}%~ ${OD_PURPLE}$(git_prompt_info)${OD_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${OD_FG}git:(${OD_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${OD_FG})%f "
