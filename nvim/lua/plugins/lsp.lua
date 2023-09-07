return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    {
      "j-hui/fidget.nvim",
      enabled = false,
      opts = {
        window = {
          blend = 0,
        },
        sources = {
          ["null-ls"] = {
            ignore = true,
          },
        },
      },
    },
  },
  event = "VeryLazy",
  config = function()
    require "config.lsp"
  end,
}
