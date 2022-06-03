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
    { "github/copilot.vim" },
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
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
        end,
    },
}
