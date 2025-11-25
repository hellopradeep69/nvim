-- lua/plugins/rose-pine.lua
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			styles = {
-- 				transparency = true,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }
-- lua/plugins/gruvbox.lua
return {
	"https://gitlab.com/motaz-shokry/gruvbox.nvim",
	name = "gruvbox",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd("colorscheme gruvbox-hard")
	end,
}
-- Prime thingy
-- return {
-- 	"vague-theme/vague.nvim",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other plugins
-- 	config = function()
-- 		require("vague").setup({
-- 			transparent = true,
-- 		})
-- 		vim.cmd("colorscheme vague")
-- 	end,
-- }
-- treesitter based gruvbox
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({ transparent_mode = true })
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }
