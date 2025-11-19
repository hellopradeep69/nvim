return {
	"nvim-mini/mini.pairs",
	config = function()
		require("mini.pairs").setup({
			mappings = {
				["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
			},
		})
	end,
}
