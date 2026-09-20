---
name: 현재 경로
description: "현재 디렉터리 경로 표시"
category: zsh-custom
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
PROMPT+="%F{{{color}}}%~%f "
