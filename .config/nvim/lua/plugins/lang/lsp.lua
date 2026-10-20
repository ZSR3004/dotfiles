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
      local filetypes = { 'python', 'c', 'rust', 'ocaml', 'markdown'}
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

  { -- ALE
    'dense-analysis/ale',
    ft = {'sml'},
    config = function()
        -- Configuration goes here.
        local g = vim.g

        -- g.ale_ruby_rubocop_auto_correct_all = 1

        g.ale_linters = {
            sml = {"smlnj"}
            -- ruby = {'rubocop', 'ruby'},
            -- lua = {'lua_language_server'}
        }
    end
  },

  { -- vim-better-sml
    'jez/vim-better-sml',
    ft = { 'sml' },
    init = function() -- A great shame; all this code to turn off auto line breaks.
    local group = vim.api.nvim_create_augroup("SMLTextWidth", { clear = true })

    vim.api.nvim_create_autocmd("FileType", {
      group = group,
      pattern = "sml",
      callback = function(event)
        vim.schedule(function()
          if vim.api.nvim_buf_is_valid(event.buf) then
            vim.api.nvim_set_option_value("textwidth", 0, {
              buf = event.buf,
            })
          end
        end)
      end,
    })
  end,
    config = function()
      vim.opt_local.textwidth=0
    end
  }

}
