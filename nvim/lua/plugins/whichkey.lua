return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		win = {
			title_pos = "left",
		},
		show_help = false, -- show a help message in the command line for using WhichKey
		show_keys = false, -- show the currently pressed key and its label as a message in the command line
		icons = { mappings = false },
		preset = "helix",
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "(which-key)",
		},
	},
}
