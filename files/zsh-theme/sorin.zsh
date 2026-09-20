---
name: Sorin (Prezto 기본)
description: Prezto 프레임워크의 기본 테마를 간단히 흉내낸 버전
category: zsh-theme
preview_colors: ["#3465a4", "#4e9a06", "#cc0000"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Simplified reproduction of Prezto's "sorin" theme.
# The real thing: https://github.com/sorin-ionescu/prezto
PROMPT='%F{#3465a4}%n@%m%f %F{#4e9a06}%~%f $(git_prompt_info)
%(?.%F{#4e9a06}❯%f.%F{#cc0000}❯%f) '
ZSH_THEME_GIT_PROMPT_PREFIX="%F{#586e75}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX="%f)"
