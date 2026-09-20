---
name: Pure (fish 버전, 간단 버전)
description: 극단적으로 미니멀한 Pure 프롬프트의 fish 포트를 간단히 흉내낸 버전
category: fish-theme
preview_colors: ["#d33682", "#586e75", "#dc322f"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# Simplified reproduction of pure-fish's minimal look.
# The real thing: https://github.com/pure-fish/pure
function fish_prompt
    set -l last_status $status
    set_color brblack
    echo -n (prompt_pwd)' '
    set -l branch (fish_git_prompt)
    if test -n "$branch"
        echo -n "$branch "
    end
    echo
    if test $last_status -eq 0
        set_color magenta
    else
        set_color red
    end
    echo -n '❯ '
    set_color normal
end
