---
name: Hydro (간단 버전)
description: 비동기 git 상태를 보여주는 초경량 fish 프롬프트를 간단히 흉내낸 버전
category: fish-theme
preview_colors: ["#06989a", "#4e9a06", "#75507b"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# Simplified reproduction of Hydro's ultra-light layout.
# The real thing: https://github.com/jorgebucaran/hydro
function fish_prompt
    set_color cyan
    echo -n (prompt_pwd)
    set -l branch (fish_git_prompt)
    if test -n "$branch"
        set_color green
        echo -n " $branch"
    end
    set_color magenta
    echo -n ' ❯ '
    set_color normal
end
