return {
	"rmehri01/onenord.nvim",
	name = "onenord",
	priority = 1000,
	config = function()
		require('onenord').setup({
			borders = true,
			fade_nc = false,
			styles = {
				comments = "italic",
				strings = "NONE",
				keywords = "bold",
				functions = "italic",
				variables = "NONE",
				diagnostics = "underline",
			},
			disable = {
				background = false,
				float_background = true,
				cursorline = false,
				eob_lines = true,
			}
		})
	end
}
