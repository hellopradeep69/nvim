require("gruvbox").setup({
	styles = {
		transparency = true,
	},
	highlight_groups = {
		LspReferenceRead = { bg = "bg2", underline = false },
		LspReferenceText = { bg = "bg_second", underline = false },
		LspReferenceWrite = { bg = "bg_second", underline = false },
		LspSignatureActiveParameter = { fg = "bg_main", bg = "green_lite", underline = false },
		LspReferenceTarget = { fg = "fg1", bg = "bg_second", underline = false },
	},
})

vim.cmd("colorscheme gruvbox")
