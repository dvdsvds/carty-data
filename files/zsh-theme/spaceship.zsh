---
name: Spaceship (간단 버전)
description: 모듈형 세그먼트가 특징인 Spaceship 프롬프트를 간단히 흉내낸 버전
category: zsh-theme
preview_colors: ["#4e9a06", "#06989a", "#c4a000"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Simplified reproduction of Spaceship's default segments.
# The real thing: https://github.com/spaceship-prompt/spaceship-prompt
PROMPT='%F{#4e9a06}%n@%m%f %F{#06989a}%~%f $(git_prompt_info)❯ '
ZSH_THEME_GIT_PROMPT_PREFIX="%F{#c4a000}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX="%f) "
