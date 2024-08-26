return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({
			options = {
				icons_enabled = true,
				theme = 'ayu_mirage',
				section_separators = {'', ''},
				component_separators = {'', ''},
				disabled_filetypes = {}
			}
		})
	end
}
