require("oil").setup({
	default_file_explorer = false,
	columns = {
		-- "icon",
		-- "permissions",
		"size",
		-- "mtime",
	},
	delete_to_trash = true,
	keymaps = {
		["P"] = "actions.preview",
		["H"] = { "actions.parent", mode = "n" },
	},
})
