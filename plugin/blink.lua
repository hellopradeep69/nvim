require("blink.cmp").setup({
	keymap = { preset = "default" },

	appearance = {
		nerd_font_variant = "mono",
	},

	completion = {
		documentation = {
			auto_show = true,
		},
		menu = {
			scrollbar = false,
		},
	},

	sources = {
		default = { "lazydev", "lsp", "path", "snippets", "buffer" },
		-- default = { 'lsp', 'path', 'snippets', 'buffer' },
		providers = {
			lazydev = {
				name = "LazyDev",
				module = "lazydev.integrations.blink",
				score_offset = 100,
			},
		},
	},

	signature = { enabled = true },
	fuzzy = { implementation = "prefer_rust_with_warning" },
})
