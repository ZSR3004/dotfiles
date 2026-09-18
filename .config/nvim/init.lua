--- Neovim Init ---

-- Local Variables --
local opt=vim.opt

-- Keybinds --
require("keybinds")

-- Lazy Package Manager Setup --
require("config.lazy")

-- Tab Sizes --
opt.tabstop=2
opt.softtabstop=2
opt.shiftwidth=4
opt.expandtab=true

-- Line Numbers --
vim.wo.number = true
vim.wo.relativenumber = true

-- Clipboard --
vim.opt.clipboard = "unnamedplus"


-- Theming --
require("kanagawa").load("dragon")
vim.opt.termguicolors = true

-- Color Column --
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(
      0,
      "ColorColumn",
      { bg = "#000000", ctermbg = "LightGrey" }
    )
  end,
})

