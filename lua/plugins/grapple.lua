return {
	"cbochs/grapple.nvim",
	opts = {
		scope = "cwd",
		icons = false, -- setting to "true" requires "nvim-web-devicons"

		default_scopes = {
			lsp = { hidden = true },
			git_branch = { hidden = true },
			git = { hidden = true },
			static = { hidden = true },
		},

		win_opts = {
			-- Can be fractional
			width = 75,
			height = 10,

			title_pos = "left",
			title_padding = " ", -- custom: adds padding around window title

			footer = "", -- disable footer
		},
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	keys = {
		{ "<leader>H", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
		{ "<leader>h", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
		{ "<leader>j", "<cmd>Grapple cycle_scopes next<cr>", desc = "cycle scopes" },
	},
}
