-- Basic vim settings
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.g.mapleader = " "

-- Paste things from outside nvim into nvim with cliphist
vim.keymap.set("n", "<leader>v", ":r !cliphist list | head -n 1 | cut -d '	' -f 2-<CR>")

-- Setting up lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Setup vim options
require("vim-options")
-- Setup plugins using lazy.nvim
require("lazy").setup("plugins")
