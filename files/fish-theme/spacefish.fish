---
name: Spacefish (간단 버전)
description: 우주를 테마로 한 모듈형 fish 프롬프트를 간단히 흉내낸 버전 (현재 아카이브됨, Starship의 전신)
category: fish-theme
preview_colors: ["#4e9a06", "#06989a", "#c4a000"]
provides:
    aliases: []
    functions: ["fish_prompt"]
depends_on: []
---
# Simplified reproduction of Spacefish's segments.
# The original (archived, spun off into Starship): https://github.com/matchai/spacefish
function fish_prompt
    set_color green
    echo -n (whoami)'@'(hostname -s)' '
    set_color cyan
    echo -n (prompt_pwd)' '
    set -l branch (fish_git_prompt)
    if test -n "$branch"
        set_color yellow
        echo -n "$branch "
    end
    set_color normal
    echo -n '➜ '
end
