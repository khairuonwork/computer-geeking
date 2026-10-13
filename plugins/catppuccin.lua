return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,

    opts = {
      flavour = "mocha",

      transparent_background = true,

      float = {
        transparent = true,
        solid = false,
      },

      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
        native_lsp = {
          enabled = true,
          virtual_text = "colored",
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            information = { "undercurl" },
            warnings = { "undercurl" },
          },
        },
      },
    },
  },
}
