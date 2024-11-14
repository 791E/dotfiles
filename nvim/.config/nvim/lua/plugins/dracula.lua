return {
    "Mofiqul/dracula.nvim",
    config = function()
        require("dracula").setup({
            italic_comment = true,
        })
        overrides = function(colors)
            return {
                Identifier = { fg = colors.cyan },
                String = { fg = colors.green },
            }
        end

        vim.cmd("colorscheme dracula")
    end,
}
