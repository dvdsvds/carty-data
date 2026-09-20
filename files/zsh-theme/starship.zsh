---
name: Starship (zsh 연동)
description: 러스트로 만든 크로스쉘 프롬프트 Starship을 zsh에서 켜는 연동 스니펫
category: zsh-theme
preview_colors: ["#06989a", "#75507b", "#4e9a06"]
provides:
    aliases: []
    functions: []
depends_on: []
---
# Starship is a separate binary, not a zsh-only theme.
# Install: https://starship.rs  (brew install starship / cargo install starship)
# This just wires it into zsh; colors/segments are configured in
# ~/.config/starship.toml, not here.
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
else
  print -P "%F{#dc322f}starship가 설치되어 있지 않습니다 (https://starship.rs)%f"
fi
