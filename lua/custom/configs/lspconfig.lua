local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- capabilities.offsetEncoding = { "utf-16" }

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- set a separate config just for clangd
lspconfig.clangd.setup {
  capabilities = {
    offsetEncoding = { "utf-16" }
  }
}

--
-- lspconfig.pyright.setup { blabla}
