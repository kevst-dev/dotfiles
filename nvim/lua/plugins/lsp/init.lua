return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function ()
    -- LSP configuration

    -- install servers and tools
    require('plugins.lsp.mason')
    local setups = require("plugins.lsp.setups")

    local lspconfig = require('lspconfig')
    require('mason-lspconfig').setup_handlers({
      function (server_name)
        lspconfig[server_name].setup(setups[server_name]())
      end
    })
  end
}
