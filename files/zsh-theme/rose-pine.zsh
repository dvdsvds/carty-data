---
name: Rose Pine
description: 은은한 로즈/파인 톤의 차분한 다크 테마
category: zsh-theme
preview_colors: ["#191724", "#ebbcba", "#c4a7e7"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Rose Pine palette (https://rosepinetheme.com)
RP_TEXT="%F{#e0def4}"
RP_ROSE="%F{#ebbcba}"
RP_IRIS="%F{#c4a7e7}"
RP_PINE="%F{#31748f}"
RP_LOVE="%F{#eb6f92}"

PROMPT='${RP_PINE}%~ ${RP_IRIS}$(git_prompt_info)${RP_ROSE}❯%f '
ZSH_THEME_GIT_PROMPT_PREFIX="${RP_TEXT}git:(${RP_LOVE}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${RP_TEXT})%f "
