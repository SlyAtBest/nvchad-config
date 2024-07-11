local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "gopls", "bashls" }
local path = vim.env.GOLANGCI_LINT_CONFIG_PATH
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.helm_ls.setup {
  settings = {
    ["helm-ls"] = {
      yamlls = {
        path = "yaml-language-server",
      },
    },
  },
}

lspconfig.golangci_lint_ls.setup {
  init_options = {
    command = {
      "golangci-lint",
      "run",
      "--out-format",
      "json",
      "--config",
      path,
    },
  },
}
