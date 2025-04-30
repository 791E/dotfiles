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
}
