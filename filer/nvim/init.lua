-- leader key
vim.g.mapleader = " "                       -- set leader key to space
vim.g.maplocalleader = " "                  -- set local leader key

require "opts"
require "launch"

-- specs
spec("plugin.colorscheme")
spec("plugin.treesitter")
spec("plugin.telescope")

require "plugin.lazy"
require "keymaps"
