
-- Y to EOL
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search reslut (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search reslut (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz",  { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz",  { desc = "Half page up (centered)" })

-- buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>",  { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>",  { desc = "Previous buffer" })

-- splitting & resizing
vim.keymap.set("n", "<leader>s", ":vsplit<CR>",  { desc = "split window vertically" })
--vim.keymap.set("n", "<Leader>sh", ":split<CR>",  { desc = "split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>",  { desc = "increase window height" })
vim.keymap.set("n", "<C-down>", ":resize -2<CR>",  { desc = "decrerase window height" })
vim.keymap.set("n", "<C-left>", ":vertical resize -2<CR>",  { desc = "decrerase window width" })
vim.keymap.set("n", "<C-right>", ":vertical resize +2<CR>",  { desc = "increase window width" })

-- window navigation
vim.keymap.set("n", "<Tab>", "<C-w>l", { desc = "move to right window" })
vim.keymap.set("n", "<S-Tab>", "<C-w>h", { desc = "move to left window" }) 

-- better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "indent right and reselect" })

-- quick file navigation
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "open file explorer" })
--vim.keymap.set("n", "<leader>ff", ":find ", { desc = "find file" })

-- quick config editing
vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.lua<CR>", { desc = "edit config" })

-- telescope keymaps
local builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<C-g>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
   builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
