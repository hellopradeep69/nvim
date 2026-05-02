require("which-key").setup({ ---@class wk.Opts
	---@type false | "classic" | "modern" | "helix"
	preset = "helix",
	win = {
		title_pos = "left",
	},
	icons = {
		mappings = false,
	},
	show_help = false, -- show a help message in the command line for using WhichKey
	show_keys = false, -- show the currently pressed key and its label as a message in the command line
})

vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "(which-key)" })
