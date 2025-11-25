return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = false,
		delete_to_trash = true,
		preview_split = "right",
		keymaps = {
			["<C-h>"] = { "actions.parent", mode = "n" },
			["H"] = { "actions.parent", mode = "n" },
			["P"] = "actions.preview",
		},
	},
	lazy = false,
}
