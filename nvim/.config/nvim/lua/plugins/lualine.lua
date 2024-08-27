return {
    'nvim-lualine/lualine.nvim',
	config = function()
		require('lualine').setup({
			options = {
				icons_enabled = true,
				theme = 'onenord',
				section_separators = {'', ''},
				component_separators = {'', ''},
				disabled_filetypes = {}
			}
		})
	end
}
