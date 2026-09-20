---
name: Tokyo Night
description: 도쿄의 밤을 모티브로 한 깔끔한 다크 블루 테마 (zsh 버전)
category: zsh-theme
preview_colors: ["#1a1b26", "#7aa2f7", "#bb9af7"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Tokyo Night palette (https://github.com/enkia/tokyo-night-vscode-theme)
TN_FG="%F{#c0caf5}"
TN_BLUE="%F{#7aa2f7}"
TN_MAGENTA="%F{#bb9af7}"
TN_GREEN="%F{#9ece6a}"
TN_RED="%F{#f7768e}"

PROMPT='${TN_BLUE}%~ ${TN_MAGENTA}$(git_prompt_info)${TN_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${TN_FG}git:(${TN_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${TN_FG})%f "
