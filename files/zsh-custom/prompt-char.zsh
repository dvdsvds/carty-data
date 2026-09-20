---
name: 프롬프트 문자 (❯)
description: "명령 실행 성공/실패에 따라 색이 바뀌는 화살표 (실패는 항상 빨강)"
category: zsh-custom
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
PROMPT+="%(?.%K{{{color}}}%F{0} ❯ %k%f.%K{#dc322f}%F{0} ❯ %k%f) "
