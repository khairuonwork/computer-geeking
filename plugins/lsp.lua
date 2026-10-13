return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation", has = "implementation" },
      { "gy", vim.lsp.buf.type_definition, desc = "Goto Type Definition", has = "typeDefinition" },
      { "<leader>cl", function() Snacks.picker.lsp_config() end, desc = "LSP Info" },
    },
    opts = {
      diagnostics = {
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "●",
        },
      },
      inlay_hints = { enabled = true },

      servers = {
        -- Web
        html = {},
        cssls = {},
        emmet_language_server = {},
        ts_ls = {
          settings = {
            javascript = { inlayHints = { includeInlayParameterNameHints = "all" } },
            typescript = { inlayHints = { includeInlayParameterNameHints = "all" } },
          },
        },

        -- Backend
        bashls = { filetypes = { "bash", "sh", "zsh" } },
        intelephense = {},
        pyright = {},
        gopls = {
          settings = {
            gopls = {
              analyses = { unusedparams = true },
              staticcheck = true,
            },
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              check = { command = "clippy" },
              cargo = { allFeatures = true },
            },
          },
        },

        -- System & Configs
        clangd = {},
        jdtls = {},
        kotlin_language_server = {},
        lua_ls = {
          settings = {
            Lua = {
              completion = { callSnippet = "Replace" },
              workspace = { checkThirdParty = false },
            },
          },
        },
        jsonls = {
          settings = { json = { validate = { enable = true } } },
        },
        yamlls = {
          settings = { yaml = { keyOrdering = false, validate = true } },
        },
      },
    },
  },
}