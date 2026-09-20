---
name: Kenneth Reitz
description: 미니멀한 화살표 프롬프트 — 빨강/파랑 포인트
category: zsh-theme
preview_colors: ["#cc0000", "#3465a4", "#c4a000"]
provides:
    aliases: []
    functions: []
depends_on: []
---
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='$(virtualenv_prompt_info)%{[03m%}%{$fg[green]%}%c \
$(git_prompt_info)\
\
%{$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%{$fg[blue]%}%~%{$reset_color%} ${return_code} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$reset_color%}%{[03m%}%{$fg[blue]%}"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="!%{$reset_color%} "
