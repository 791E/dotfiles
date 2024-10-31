-- Basic vim settings
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.g.mapleader = " "

-- Window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true } )
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true } )
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true } )
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true } )

-- Window splitting
vim.api.nvim_set_keymap("n", "<C-s>", ":split<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap("n", "<C-v>", ":vsplit<CR>", { noremap = true, silent = true } )

-- Close window
vim.api.nvim_set_keymap("n", "<C-q>", ":q<CR>", { noremap = true, silent = true } )

-- Force close window
vim.api.nvim_set_keymap("n", "<C-M-q>", ":q!<CR>", { noremap = true, silent = true })

-- Write file
vim.api.nvim_set_keymap("n", "<C-w>", ":w<CR>", { noremap = true, silent = true } )

-- Write-quit all
vim.api.nvim_set_keymap("n", "<C-wq>", ":wqa<CR>", { noremap = true, silent = true })

-- Visual Block
vim.api.nvim_set_keymap("n", "<leader>v", "<C-v>", { noremap = true, silent = true } )

-- Enable line numbers at the current line
vim.cmd("set number")

-- Enable relative line numbers
vim.cmd("set relativenumber")

-- Toggle neo-tree filesystem
vim.keymap.set("n", "<C-n>", ":Neotree filesystem left toggle<CR>")

-- Keybindings for LSP related stuff
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })

