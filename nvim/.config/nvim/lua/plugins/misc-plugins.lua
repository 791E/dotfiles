return {
    -- devicons for neotree
    {
        "nvim-tree/nvim-web-devicons",
        opts = {},
    },
    -- syntax highlighting for eww.yuck
    {
        "elkowar/yuck.vim",
        config = function() end,
    },
    -- simplify working with Lisp-type languages
    {
        "eraserhd/parinfer-rust",
        build = "cargo build --release",
    },
    -- preview and syntax for typst
    {
        "chomosuke/typst-preview.nvim",
        lazy = false,
        opts = {
            dependencies_bin = {
                ["tynimist"] = "tynimist",
            },
        },
    },
    -- undotree
    {
        "mbbill/undotree",
        config = function() end,
    },
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme tokyonight")
        end
    }
}
