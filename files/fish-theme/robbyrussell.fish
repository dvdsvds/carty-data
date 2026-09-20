---
name: Robby Russell (fish 포트)
description: oh-my-zsh 기본 테마를 fish로 옮긴 버전 — 초록 화살표 프롬프트
category: fish-theme
preview_colors: ["#4e9a06", "#06989a", "#cc0000"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# fish port of oh-my-zsh's default "robbyrussell" theme
# https://github.com/oh-my-fish/theme-robbyrussell
function fish_prompt
    set -l last_status $status
    if test $last_status -eq 0
        set_color green
        echo -n '➜ '
    else
        set_color red
        echo -n '➜ '
    end
    set_color cyan
    echo -n (prompt_pwd)
    set_color normal

    set -l branch (fish_git_prompt)
    if test -n "$branch"
        set_color blue
        echo -n " git:($branch"
        set_color red
        echo -n ')'
        set_color normal
    end
    echo -n ' '
end
