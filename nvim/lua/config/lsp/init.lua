-- LSP configuration

local lspconfig = require "lspconfig"
local servers = require "config.lsp.servers"

for server, setup in pairs(servers) do
  lspconfig[server].setup(setup())
end

-- install servers and tools
require "config.lsp.mason"
