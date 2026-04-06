require('render-markdown').setup({
	completions = { lsp = { enabled = true } },
	code = {
		sign = false,
		width = "block",
		right_pad = 1,
	},
	heading = {
		sign = false,
		icons = {},
	},
	checkbox = {
		enabled = true,
	},
}) -- only mandatory if you want to set custom option
