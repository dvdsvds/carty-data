---
name: 기본 (테마 없음)
description: 테마 없이 기본 zsh 설정만 적용 (히스토리, 자동완성 등 기초 설정)
category: zsh-theme
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
autoload -Uz compinit && compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
