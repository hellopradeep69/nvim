return {
	{
		"romgrk/barbar.nvim",
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			animation = false,
			insert_at_end = true, -- new buffers go to end
			maximum_padding = 1, -- padding around buffer names
			icons = {
				button = " ",
				filetype = {
					enabled = false,
				},
				modified = { button = "-" },
			},
			sidebar_filetypes = {
				NvimTree = {
					event = "BufWipeout",
					-- text = "Tree",
					text = vim.fn.expand("%:p:h"),
					align = "left",
					highlight = "Directory",
				},
				fyler = {
					event = "BufWipeout",
					-- text = "Tree",
					text = vim.fn.expand("%:p:h"),
					align = "left",
					highlight = "Directory",
				},
				undotree = {
					text = "undotree",
					align = "center",
				},
				["neo-tree"] = {
					event = "BufWipeout",
					text = "Neo-tree",
					highlight = "Directory",
					align = "left",
				},
			},
		},
	},
}
