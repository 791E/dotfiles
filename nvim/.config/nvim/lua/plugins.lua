return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local status_ok, configs = pcall(require, "nvim-treesitter.configs")
            if not status_ok then
                print("Failed to load nvim-treesitter.configs")
                return
            end
            configs.setup({
                ensure_installed = {"lua", "c", "python"},
                highlight = { enable = true },
                indent = { enable = true },
                autoinstall = true
            })
        end
    },
}
