return {
  { -- Indent Blankline
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    config = function ()
      require("ibl").setup({
          exclude = {
              filetypes = {
                  "txt",
                  "sml",
                  "tex"
              },
          },
      })
    end
  }
}
