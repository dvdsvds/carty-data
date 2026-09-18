---
name: Tokyo Night
description: A clean, dark theme inspired by Tokyo at night
category: themes/nvim
preview_colors: ["#1a1b26", "#7aa2f7", "#bb9af7"]
provides:
    aliases: []
    function: []
---
{
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd.colorscheme("tokyonight")
    end,
},
