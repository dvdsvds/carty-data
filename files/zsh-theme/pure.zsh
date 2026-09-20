---
name: Pure (간단 버전)
description: sindresorhus/pure의 극단적 미니멀함을 흉내낸 버전 — 굵은 마젠타 화살표가 시그니처입니다
category: zsh-theme
preview_colors: ["#d33682", "#586e75", "#dc322f"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Simplified reproduction of Pure's look. The real thing (zsh module):
# https://github.com/sindresorhus/pure
PROMPT='%F{#586e75}%~%f
%(?.%F{#d33682}❯%f.%F{#dc322f}❯%f) '
RPROMPT='%F{#586e75}$(git_prompt_info)%f'
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
