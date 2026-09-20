---
name: Powerlevel10k (간단 버전)
description: Powerlevel10k의 lean 스타일을 간단히 흉내낸 버전 — 실제 p10k는 별도 설치와 위저드 설정이 필요합니다
category: zsh-theme
preview_colors: ["#268bd2", "#859900", "#dc322f"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Simplified reproduction of Powerlevel10k's "lean" preset look.
# The real thing: https://github.com/romkatv/powerlevel10k (설치 후 `p10k configure`)
P10K_DIR="%F{#268bd2}"
P10K_OK="%F{#859900}"
P10K_ERR="%F{#dc322f}"

PROMPT='${P10K_DIR}%~ $(git_prompt_info)%(?.${P10K_OK}.${P10K_ERR})❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="%F{#586e75}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX="%f) "
