-- Basic vim settings
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.g.mapleader = " "

-- Window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true} )
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true} )
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true} )
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true} )

-- Window splitting
vim.api.nvim_set_keymap("n", "<C-s>", ":split<CR>", { noremap = true, silent = true} )
vim.api.nvim_set_keymap("n", "<C-v>", ":vsplit<CR>", { noremap = true, silent = true} )

-- Visual Block
vim.api.nvim_set_keymap("n", "<leader>v", "<C-v>", { noremap = true, silent = true} )
