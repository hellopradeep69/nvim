return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- "saghen/blink.cmp",
		"mason-org/mason-lspconfig.nvim",
		"mason-org/mason.nvim",
	},

	-- lua ls doesnt work now in my setup
	-- vim.lsp.config("lua_ls", { cmd = { "/usr/bin/lua-language-server" } }),
	-- vim.lsp.enable("lua_ls"),

	vim.diagnostic.config({ virtual_text = true }),
}
