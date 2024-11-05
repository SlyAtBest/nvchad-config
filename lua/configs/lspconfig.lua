-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "gopls", "bashls", "groovyls", "ts_ls" }
local path = vim.env.GOLANGCI_LINT_CONFIG_PATH
local nvlsp = require "nvchad.configs.lspconfig"
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
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

lspconfig.groovyls.setup {
  cmd = {
    "java",
    "-jar",
    vim.env.HOME
      .. "/.local/share/nvim/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar",
  },
}
