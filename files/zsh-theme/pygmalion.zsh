---
name: Pygmalion
description: user@host + git 브랜치만 보여주는 아주 작은 프롬프트
category: zsh-theme
preview_colors: ["#06989a", "#75507b", "#4e9a06"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Yay! High voltage and arrows!

ZSH_THEME_GIT_PROMPT_PREFIX="%{${reset_color}%}%F{green}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{${reset_color}%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{yellow}⚡%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

base_prompt="%{${reset_color}%}%F{magenta}%n%F{cyan}@%F{yellow}%m%F{red}:%F{cyan}%0~%F{red}|%f"
post_prompt="%{${reset_color}%}%F{cyan}⇒%f  "

PROMPT="${base_prompt}\$(git_prompt_info)${post_prompt}"
unset base_prompt post_prompt
