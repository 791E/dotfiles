-- Basic vim settings
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.g.mapleader = " "

vim.cmd("set clipboard+=unnamedplus")

-- Window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Window splitting
vim.api.nvim_set_keymap("n", "<leader>s", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })

-- Close window
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })

-- Force close window
vim.api.nvim_set_keymap("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })

-- Write file
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

-- Write-quit all
vim.api.nvim_set_keymap("n", "<leader>wq", ":wqa<CR>", { noremap = true, silent = true })

-- Enable line numbers at the current line
vim.cmd("set number")

-- Enable relative line numbers
vim.cmd("set relativenumber")

-- Toggle neo-tree filesystem
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>")

-- trouble.nvim
vim.keymap.set("n", "<leader>td", ":Trouble diagnostics toggle win.position=right<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ts", ":Trouble symbols toggle focus=false win.position=left<CR>", { noremap = true, silent = true })

-- Keybindings for LSP related stuff
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { noremap = true, silent = true })

-- Toggle undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
