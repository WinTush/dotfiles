-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping

-- Easier escape from insert mode
lvim.keys.insert_mode["kj"] = "<Esc>"
lvim.keys.insert_mode["kJ"] = "<Esc>"
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["jK"] = "<Esc>"

-- Open the current file in the default program
lvim.keys.normal_mode["<leader>x"] = ":!xdg-open %<cr><cr>"

-- Easy insertion of a trailing ; or , from normal_mode
-- lvim.keys.normal_mode[";;"] = "<Esc>A;<Esc>"
-- lvim.keys.normal_mode[",,"] = "<Esc>A,<Esc>"

-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Markdown preview with glow
lvim.keys.normal_mode["<leader>G"] = ":Glow<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings.b.n = { "<cmd>BufferLineCycleNext<CR>", "Next" }
lvim.builtin.which_key.mappings.b.m = { "<cmd>MinimapToggle<CR>", "Minimap" }
lvim.builtin.which_key.mappings.g.l = { "<cmd>GitBlameToggle<CR>", "Blame" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["C"] = { "<cmd>Codi<CR>", "Codi" }

lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}

-- vim-better-sml keybindings
lvim.builtin.which_key.mappings["S"] = {
    name = "+SML",
    h = { "<cmd>SMLCheckHealth<cr>", "Check Health" },
    d = { "<cmd>SMLJumpToDef<cr>", "Definitions" },
    r = { "<cmd>SMLReplBuild<cr>", "Repl Build" },
    c = { "<cmd>SMLReplClear<cr>", "Repl Clear" },
    s = { "<cmd>SMLReplStart<cr>", "Repl Start" },
    t = { "<cmd>SMLTypeQuery<cr>", "Type Query" },
}

vim.cmd [[
augroup vimbettersml
  au!

  " ----- Keybindings -----

  au FileType sml nnoremap <silent> <buffer> gd :SMLJumpToDef<CR>
augroup END
]]

-- Hardtime
lvim.keys.normal_mode["<leader>H"] = ":HardTimeToggle<cr>"
vim.cmd [[
let g:hardtime_default_on = 1
let g:hardtime_timeout = 2000
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 2
]]

