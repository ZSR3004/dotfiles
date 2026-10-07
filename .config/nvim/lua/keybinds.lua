--- Keybinds ---

--- Leaders ---
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- File IO and Writing --
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file", silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close buffer" })

-- Mode Navigation --
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode", silent = true })
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = 'Exit terminal mode', silent = true})
vim.keymap.set('n', '<leader>vst', ":vsplit | terminal", { desc = 'Create a vertical split and open terminal in it.', silent = true})

-- Buffer Navigation --
vim.keymap.set("n", "<C-l>", ":bnext<CR>", { desc = "Move to next buffer", silent = true })
vim.keymap.set("n", "<C-h>", ":bprevious<CR>", { desc = "Move to previous buffer", silent = true })
vim.keymap.set("n", "<leader>h", ":noh<CR>", { desc = "Removes highlights; mostly for after searching", silent = true })
vim.keymap.set("n", "<leader>s", ":vsplit<CR><C-w>w", { desc = "Creates a vertical split", silent = true })
vim.keymap.set("n", "<leader>hs", ":split<CR><C-w>w", { desc = "Creates a horizontal split", silent = true })
