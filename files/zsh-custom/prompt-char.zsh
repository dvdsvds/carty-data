---
name: 프롬프트 문자 (❯)
description: "명령 실행 성공/실패에 따라 색이 바뀌는 화살표 — 성공 색은 조립할 때 직접 고르고, 실패는 항상 빨강입니다"
category: zsh-custom
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
PROMPT+="%(?.%F{{{color}}}❯%f.%F{#dc322f}❯%f) "
