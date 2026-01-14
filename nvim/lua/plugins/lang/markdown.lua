return {

  { -- MarkView
    "OXY2DEV/markview.nvim",
    ft = { "markdown" },
  },

  { -- Markdown Links
    'jghauser/follow-md-links.nvim',
    ft = { "markdown" },
    config = function()
      vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })
    end,
  },

  { -- Live Preview
    'brianhuster/live-preview.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('livepreview.config').set()

      vim.keymap.set("n", "<leader>mp", ":LivePreview start<CR>", { desc = "Live preview Markdown file." })
    end
  },

}
