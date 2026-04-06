require("colorizer").setup({
	lazy_load = true, -- lazily schedule buffer highlighting
	options = {
		parsers = {
			css = true, -- preset: enables names, hex, rgb, hsl, oklch, css_var
			css_fn = true, -- preset: enables rgb, hsl, oklch
			names = {
				enable = false, -- enable named colors (e.g. "Blue")
			},
			hex = {
				default = true, -- default value for unset format keys (see above)
				rgb = true, -- #RGB (3-digit)
				rgba = true, -- #RGBA (4-digit)
				rrggbb = true, -- #RRGGBB (6-digit)
				rrggbbaa = true, -- #RRGGBBAA (8-digit)
				hash_aarrggbb = false, -- #AARRGGBB (QML-style, alpha first)
				aarrggbb = false, -- 0xAARRGGBB
				no_hash = false, -- hex without '#' at word boundaries
			},
			tailwind = {
				enable = true, -- parse Tailwind color names
				update_names = false, -- feed LSP colors back into name parser (requires both enable + lsp.enable)
			},
		},
	},
})
