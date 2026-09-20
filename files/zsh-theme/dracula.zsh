---
name: Dracula
description: 어두운 보라/분홍 톤의 널리 쓰이는 다크 테마
category: zsh-theme
preview_colors: ["#282a36", "#bd93f9", "#50fa7b"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Dracula palette (https://draculatheme.com) applied to a plain zsh prompt.
DRACULA_FG="%F{#f8f8f2}"
DRACULA_COMMENT="%F{#6272a4}"
DRACULA_GREEN="%F{#50fa7b}"
DRACULA_PURPLE="%F{#bd93f9}"
DRACULA_PINK="%F{#ff79c6}"
DRACULA_RED="%F{#ff5555}"

PROMPT='${DRACULA_PURPLE}%~ ${DRACULA_COMMENT}$(git_prompt_info)${DRACULA_GREEN}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${DRACULA_PINK}git:(${DRACULA_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${DRACULA_COMMENT})%f "
