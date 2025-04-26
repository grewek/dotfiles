return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = { preset = "default" },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = { auto_show = true },
			menu = {
				draw = {
					treesitter = {},
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind" }
					}
				}
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" }
		},
		fuzzy = {
			implementation = "prefer_rust_with_warning"
		}
	},
	opts_extended = { "sources.default" }
}
