return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- "saghen/blink.cmp",
		"mason-org/mason-lspconfig.nvim",
		"mason-org/mason.nvim",
	},

	vim.diagnostic.config({
		float = { border = "rounded", source = "if_many", focusable = false },
		underline = true,
		update_in_insert = false,
		severity_sort = true,
		virtual_text = { spacing = 4, source = "if_many", prefix = "●" },
		signs = {},
	}),
}
