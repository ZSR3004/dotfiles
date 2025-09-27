return {
  {
    "Jxstxs/conceal.nvim",  -- fixed missing quote
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("conceal").setup({
        latex = {
          ["\\\\ga"] = "α",
          ["\\\\vDash"] = "⊨",
        },
      })

      vim.keymap.set("n", "<leader>tc", "<cmd>ConcealToggle<CR>", { desc = "Toggle conceal" })

    end,
  },
}
