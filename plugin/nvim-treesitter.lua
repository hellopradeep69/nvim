vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and kind == "update" then
			if not ev.data.active then
				vim.cmd.packadd("nvim-treesitter")
			end
			vim.cmd("TSUpdate")
		end
	end,
})

require("nvim-treesitter").install({
	"bash",
	"c",
	"cmake",
	"cpp",
	"diff",
	"html",
	"javascript",
	"jsdoc",
	"json",
	"lua",
	"luadoc",
	"luap",
	"make",
	"markdown",
	"markdown_inline",
	"printf",
	"python",
	"query",
	"rust",
	"regex",
	"toml",
	"tmux",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"xml",
	"yaml",
	"javascript",
	"zig",
	"zsh",
})
