return {
  { -- LSP Config
    'neovim/nvim-lspconfig',
    dependencies = {
      "saghen/blink.cmp",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      servers = {
        lua_ls = { Lua = { diagnostics = { globals = { "vim" } } } },
      },
    },
    config = function(_, opts)
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup()
      mason_lspconfig.setup({ automatic_installation = true })

      local installed_servers = mason_lspconfig.get_installed_servers()
      local servers = opts.servers
      for _, server_name in ipairs(installed_servers) do
        local server_config = {}
        -- TODO: Generalize this for all servers.
        if server_name:match("lua_ls") then
          server_config.settings = servers["lua_ls"]
        end
        vim.lsp.config(server_name, server_config)
      end
    end,
  },

  { -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function (_, opts)
      local ts = require("nvim-treesitter")
      ts.setup()

      -- TODO: Automate language collection so that it just installs it by default.
      local filetypes = { 'python', 'c', 'rust', 'ocaml', 'markdown', 'tex'}
      vim.api.nvim_create_autocmd('FileType', {
          pattern = filetypes,
          callback = function()
          vim.treesitter.start()
          -- TODO: Fix folding behavior
          -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          -- vim.wo[0][0].foldmethod = 'expr'
        end,
      })
    end
  },

}
