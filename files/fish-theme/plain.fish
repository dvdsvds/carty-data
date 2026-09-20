---
name: 기본 (테마 없음)
description: 테마 없이 기본 fish 설정만 적용 (색상 없는 심플한 프롬프트)
category: fish-theme
preview_colors: []
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
function fish_prompt
    set -l last_status $status
    set_color normal
    echo -n (prompt_pwd)
    if test $last_status -ne 0
        set_color red
    end
    echo -n ' > '
    set_color normal
end
