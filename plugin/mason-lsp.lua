require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer" },
})

vim.diagnostic.config({ virtual_text = true })
