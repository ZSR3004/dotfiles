vim.opt_local.spell = true
vim.opt_local.spelllang = { "en_us" }

-- Markview Command --
-- TODO: Move to plugin config for Markview
vim.keymap.set("n", "<leader>mc", ":Markview<CR>", { desc = "Open terminal" })

-- Color Column --
vim.opt_local.colorcolumn = "121"

-- Text Width --
vim.opt_local.textwidth = 120
