local map = vim.api.nvim_set_keymap
local opts = { noremap = true }
local silent_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, silent = true, expr = true }

vim.g.mapleader = " "

map('n', '<leader>ve', [[:edit ~/.config/nvim/init.lua<cr>]], {})
map('n', '<leader>vr', [[:luafile ~/.config/nvim/init.lua<cr>]], {})

map('n', '<leader>k', [[:nohlsearch<CR>]], {})
map('n', '<leader>Q', [[:bufdo bdelete<cr>]], {})

-- Allow gf to open non-existent files
map('', 'gf', [[:edit <cfile><cr>]], {})

-- Reselect visual selection after indenting
map('v', '<', [[<gv]], opts)
map('v', '>', [[>gv]], opts)

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
map('v', 'y', [[myy`y]], opts)
map('v', 'Y', [[myY`y]], opts)

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
map('n', 'j', [[(v:count == 0 ? 'gj' : 'j')]], expr_opts )
map('n', 'k', [[(v:count == 0 ? 'gk' : 'k')]], expr_opts )

-- Paste replace visual selection without copying it
map('v', '<leader>p', [["_dP]], opts)

-- Keep it centered
map('n', 'n', [[nzzzv]], opts)
map('n', 'N', [[Nzzzv]], opts)
map('n', 'J', [[mzJ`z]], opts)

-- Open the current file in the default program
map('n', '<leader>x', [[:!xdg-open %<cr><cr>]], {})

-- Quicky escape to normal mode
map('i', 'kj', [[<esc>]], {})
map('i', 'kJ', [[<esc>]], {})

-- Easy insertion of a trailing ; or , from insert mode
map('i', ';;', [[<Esc>A;<Esc>]], {})
map('i', ',,', [[<Esc>A,<Esc>]], {})

-- Sudo write files
map('c', 'w!!', [[%!sudo tee > /dev/null %]], {})

