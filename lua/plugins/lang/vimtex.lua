return {

  { -- Vimtex
    "lervag/vimtex",
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

      -- TODO: Add function to toggle conceal --
      vim.g.vimtex_syntax_conceal = {
        accents = 1,
        ligatures = 1,
        cites = 1,
        fancy = 1,
        spacing = 1,
        greek = 1,
        math_bounds = 1,
        math_delimiters = 1,
        math_fracs = 1,
        math_super_sub = 1,
        math_symbols = 1,
        sections = 1,
        styles = 1,
      }
    end,
  },

}
