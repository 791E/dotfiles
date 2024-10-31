return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "pyright", "bashls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.pyright.setup({})
			lspconfig.bashls.setup({})

			vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { noremap = true, silent = true })
			vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, { noremap = true, silent = true })
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })
		end
	}
}
