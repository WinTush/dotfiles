-- Additional Plugins
lvim.plugins = {
    { "EdenEast/nightfox.nvim" },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    { "ellisonleao/glow.nvim" },
    { "tpope/vim-obsession" },
    { 'jez/vim-better-sml' },
    { "zbirenbaum/copilot.lua",
        event = { "VimEnter" },
        config = function()
            vim.defer_fn(function()
                require("copilot").setup {
                    plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
                }
            end, 100)
        end,
    },

    { "zbirenbaum/copilot-cmp",
        after = { "copilot.lua", "nvim-cmp" },
    },
    { "takac/vim-hardtime" },
    {
        "tzachar/cmp-tabnine",
        run = "./install.sh",
        requires = "hrsh7th/nvim-cmp",
        -- event = "InsertEnter",
    },
    {
        'wfxr/minimap.vim',
        run = "cargo install --locked code-minimap",
        -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
        config = function()
            vim.cmd("let g:minimap_width = 10")
            vim.cmd("let g:minimap_auto_start = 0")
            vim.cmd("let g:minimap_auto_start_win_enter = 1")
        end,
    },
    {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("user.hop").config()
        end,
    },
    { "p00f/nvim-ts-rainbow" },
    {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function()
            require "lsp_signature".setup()
        end
    },
}

table.insert(lvim.builtin.cmp.sources, { name = "copilot", group_index = 0 })
