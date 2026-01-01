--- Keybinds ---

-- File IO and Writing --
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close buffer" })

-- Buffer Navigation --
vim.keymap.set("n", "<leader>w", ":bdelete<CR>", { desc = "Closes buffer" })
vim.keymap.set("n", "<C-l>", ":bnext<CR>", { desc = "Move left a buffer" })
vim.keymap.set("n", "<C-h>", ":bprevious<CR>", { desc = "Move right a buffer" })

-- Treesitter --
vim.keymap.set(
  "n", "<leader>d",
  function()
    vim.diagnostic.open_float(nil, { scope = 'line', focusable = true })
  end,
  { desc = "Open diagnostic float for current line" }
)
