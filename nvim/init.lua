require("config.lazy")
require("lsp.lua_ls")
require("lsp.rust_analyzer")

vim.cmd[[colorscheme eldritch]]

vim.o.number = true

--Cursor movement between windows
vim.keymap.set("n", "<M-j>", "<c-W>j", { desc = "Move cursor to the bottom window" })
vim.keymap.set("n", "<M-k>", "<c-W>k", { desc = "Move cursor to the upper window"  })
vim.keymap.set("n", "<M-hY", "<c-W>h", { desc = "Move cursor to the left window"   })
vim.keymap.set("n", "<M-l>", "<c-W>l", { desc = "Move cursor to the right window"  })

vim.opt.scrolloff = 8
