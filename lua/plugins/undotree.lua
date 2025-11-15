return{"mbbill/undotree",
cmd = "UndotreeToggle", -- only load when you call the command
keys = {
	{
		"<leader>ii",
		function()
			vim.cmd("UndotreeToggle")
			vim.cmd("wincmd w")
		end,
		desc = "Toggle UndoTree",
	},
},
}
