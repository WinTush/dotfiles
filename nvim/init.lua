-- You will need to install language servers `npm i -g vscode-langservers-extracted` and `npm install -g typescript typescript-language-server`

-- Plugin management via Packer
require("plugins")
-- Vim mappings, see lua/config/which.lua for more mappings
require("mappings")
-- All non plugin related (vim) options
require("options")
-- Vim autocommands/autogroups
require("autocmd")
