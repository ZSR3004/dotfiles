return {
  {
    "Jxstxs/conceal.nvim",
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

      vim.keymap.set("n", "<leader>tc", function()
        require("conceal").toggle_conceal()
      end, { desc = "Toggle conceal" })
    end,
  },
}
