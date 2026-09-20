---
name: Agnoster (fish 포트)
description: Powerline 스타일 구간형 테마의 fish 포트 (Powerline 폰트 필요)
category: fish-theme
preview_colors: ["#3465a4", "#2e3436", "#4e9a06"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# fish port of the classic Powerline-style "agnoster" theme
# https://github.com/oh-my-fish/theme-agnoster
function fish_prompt
    set_color -b blue black
    echo -n ' '(prompt_pwd)' '
    set_color -b green black
    set -l branch (fish_git_prompt)
    if test -n "$branch"
        echo -n ' '(string trim -c '()' $branch)' '
    end
    set_color normal
    echo -n ' ❯ '
end
