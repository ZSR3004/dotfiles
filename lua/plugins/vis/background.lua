return {

  { -- Transparent Background
    "xiyaowong/transparent.nvim",
  },

  { -- Deadcolumn
    -- BUG: Deadcolumn isn't showing even when transparent background off.
    'Bekaboo/deadcolumn.nvim',
    config = function (_, opts)
      require('deadcolumn').setup(opts)
    end,
  },

}
