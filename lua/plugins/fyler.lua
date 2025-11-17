return {
	"A7Lavinraj/fyler.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- branch = "stable",
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {
		integrations = {
			icon = "nvim_web_devicons",
		},
		views = {
			finder = {
				default_explorer = true,
				delete_to_trash = true,
			},
		},
	},
}
