---
name: Zsh
description: 기본 zsh 설정 (히스토리, 자동완성 등 기초 설정)
category: shell
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
