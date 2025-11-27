return {
	"MeanderingProgrammer/render-markdown.nvim",
	lazy = false,
	-- dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = {
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
	},
}
