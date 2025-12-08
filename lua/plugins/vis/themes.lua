return {

  { -- Oxocarbon
    "nyoom-engineering/oxocarbon.nvim"
  },

  { -- Kanagawa
    "rebelot/kanagawa.nvim",
    config = function ()
      require('kanagawa').setup({
        transparent = true,
      })
    end
  },

  {
    "chaserensberger/christmas.nvim",
    name = "christmas",
    lazy = false,
  },

}
