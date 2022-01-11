local options = {
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- allows neovim to access the system clipboard
    cmdheight = 2, -- space for displaying messages/commands
    completeopt = { "menu", "menuone", "noselect", "noinsert" }, -- A comma separated list of options for Insert mode completion mostly just for cmp
    conceallevel = 0, -- so that `` is visible in markdown files
    confirm = true,
    cursorline = true, -- highlight the current line
    expandtab = true, -- convert tabs to spaces
    fileencoding = "utf-8", -- the encoding written to a file
    foldenable = false, -- disable folding; enable with zi
    -- foldexpr = "nvim_treesitter#foldexpr()",
    foldmethod = "indent",
    grepprg = "rg --hidden --vimgrep --smart-case --",
    guicursor = "n-v-c-sm:block-blinkwait50-blinkon50-blinkoff50,i-ci-ve:ver25-Cursor-blinkon100-blinkoff100,r-cr-o:hor20",
    -- guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50", -- block in normal and beam cursor in insert mode
    guifont = "monospace:h17",
    ignorecase = true, -- ignore case in search patterns
    inccommand = "split", -- Get a preview of replacements
    lazyredraw = true, -- do not redraw screen while running macros
    linebreak = true, -- Stop words being broken on wrap
    list = true, -- Show some invisible characters
    listchars = "tab:>·,trail:·,extends:>,precedes:<,nbsp:+",
    mouse = "a", -- allow the mouse to be used in neovim
    number = true, -- set numbered lines
    numberwidth = 4, -- set number column width to 2 {default 4}
    pumheight = 10, -- pop up menu height
    redrawtime = 10000, -- Allow more time for loading syntax on large files
    relativenumber = true, -- set relative numbered lines
    scrolloff = 4, -- Minimal number of screen lines to keep above and below the cursor
    shiftround = true, -- Round indent
    shiftwidth = 2, -- the number of spaces inserted for each indentation
    showmode = false, -- Don't display mode we don't need to see things like -- INSERT -- anymore
    showtabline = 2, -- always show tabs
    sidescrolloff = 5, -- The minimal number of columns to scroll horizontally
    signcolumn = "yes:1", -- always show the sign column, otherwise it would shift the text each time
    smartcase = true, -- Do not ignore case with capitals
    smartindent = true, -- make indenting smarter again
    softtabstop = 4,
    spell = true,
    spelllang = {  "en_us", "en_gb" },
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    swapfile = true, -- enable/disable swap file creation
    tabstop = 4, -- Number of spaces tabs count for
    termguicolors = true, -- set term gui colors (most terminals support this)
    timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
    title = true,
    ttimeoutlen = 0, -- Time in milliseconds to wait for a key code sequence to complete
    undofile = true, -- enable persistent undo
    updatetime = 300, -- faster completion (4000ms default)
    whichwrap = "<,>,[,],h,l", -- Wrap movement between lines in edit mode with arrows
    wildignorecase = true, -- When set case is ignored when completing file names and directories
    wildmode = "longest:full,full",
    wrap = false, -- display lines as one long line
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[colorscheme duskfox]]
vim.cmd "set inccommand=split"

vim.opt.shortmess:append "c" -- prevent "pattern not found" messages
vim.opt.path:append "**" -- enable :find to search recursively in sub-folders

vim.g.markdown_fenced_languages = { "html", "javascript", "typescript", "css", "scss", "lua", "vim" } -- Give me some fenced codeblock goodness
