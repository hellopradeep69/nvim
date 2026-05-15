require("mason").setup()
require("mason-lspconfig").setup()

-- Names must be Mason package names
-- Auto install this
local ensure_installed = {
	"bash-language-server",
	"black",
	"clangd",
	"clang-format",
	"css-lsp",
	"html-lsp",
	"isort",
	"lua-language-server",
	"prettier",
	"prettierd",
	"pyright",
	"rust-analyzer",
	"shfmt",
	"stylua",
	"tree-sitter-cli",
}

local installed_package_names = require("mason-registry").get_installed_package_names()
for _, v in ipairs(ensure_installed) do
	if not vim.tbl_contains(installed_package_names, v) then
		vim.cmd(":MasonInstall " .. v)
	end
end

vim.diagnostic.config({ virtual_text = true })
