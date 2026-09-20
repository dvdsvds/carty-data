---
name: Bob The Fish (간단 버전)
description: Powerline 스타일의 git 인식 fish 테마를 간단히 흉내낸 버전
category: fish-theme
preview_colors: ["#3465a4", "#4e9a06", "#c4a000"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# Simplified reproduction of bobthefish's segmented look.
# The real thing: https://github.com/oh-my-fish/theme-bobthefish
function fish_prompt
    set_color -b blue white
    echo -n ' '(prompt_pwd)' '
    set -l branch (fish_git_prompt)
    if test -n "$branch"
        set_color -b yellow black
        echo -n ' '(string trim -c '()' $branch)' '
    end
    set_color normal
    echo -n ' > '
end
