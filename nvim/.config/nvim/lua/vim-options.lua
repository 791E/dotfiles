-- Basic vim settings
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.g.mapleader = " "

-- Paste things from outside nvim into nvim with cliphist
vim.keymap.set("n", "<leader>v", ":r !cliphist list | head -n 1 | cut -d '	' -f 2-<CR>")

