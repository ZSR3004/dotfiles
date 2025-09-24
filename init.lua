-- Load lazy.nvim plugin configuration
require("config.lazy")

-- Line numbering settings
vim.opt.number = true                   -- Show absolute line numbers
vim.opt.relativenumber = true           -- Show relative line numbers
vim.opt.signcolumn = "yes"

-- Tab and indentation settings
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.softtabstop = 4

-- Use Nerd Font-compatible symbols
vim.g.have_nerd_font = true

-- Theme
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")
