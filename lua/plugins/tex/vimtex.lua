return {

  { -- Vimtex
    "lervag/vimtex",
    lazy = false,
    ft = { "tex" },
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = ".build",
      }
    end,
    config = function()
      vim.keymap.set("n", "<leader>b", "<cmd>VimtexCompile<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>v", "<cmd>VimtexView<CR>", { noremap = true, silent = true })
    end,
  },

}
