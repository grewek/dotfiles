return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()

		local builtin = require("telescope.builtin")
		local themes = require("telescope.themes")

		--Functions for using a different theme and customizing the size
		local find_files = function ()
			local opts = {
				layout_config = {
					height = 0.35
				}
			}

			return builtin.find_files(themes.get_ivy(opts))
		end

		local quickfix = function ()
			local opts = {
				layout_config = {
					height = 0.35
				}
			}

			return builtin.quickfix(themes.get_ivy(opts))
		end

		-- Basic Telescope bindings
		vim.keymap.set("n", "<leader>ff", find_files,              { desc = "Telescope find files"         })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep,       { desc = "Telescope live grep"          })
		vim.keymap.set("n", "<leader>fb", builtin.buffers,         { desc = "Telescope buffers"            })
		vim.keymap.set("n", "<leader>fq", quickfix,                { desc = "Telescope Quickfix"           })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags,       { desc = "Telescope Help Tags"          })

		-- Telescope bindings for LSP
		vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions,      {desc = "LSP Goto Definition"      })
		vim.keymap.set("n", "<leader>ft", builtin.lsp_type_definitions, {desc = "LSP Goto Type Definition" })
		vim.keymap.set("n", "<leader>fe", builtin.diagnostics,          {desc = "LSP Diagnostics"          })
		vim.keymap.set("n", "<leader>fr", builtin.lsp_references,       {desc = "LSP Goto References"      })
		vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations,  {desc = "LSP Goto Implementations" })
	end,

}
