return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {},
        gdshader_lsp = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        gdscript = { "gdformat" },
      },
    },
  },
}
