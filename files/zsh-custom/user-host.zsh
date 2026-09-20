---
name: 사용자@호스트
description: "user@host 표시"
category: zsh-custom
preview_colors: []
provides:
    aliases: []
    functions: []
depends_on: []
---
PROMPT+="%F{{{color}}}%n@%m%f "
