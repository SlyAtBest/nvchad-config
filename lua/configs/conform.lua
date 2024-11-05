local options = {
  formatters_by_ft = {
    lua = { "stylua", "typos" },
    css = { "prettier", "typos" },
    html = { "prettier", "typos" },
    go = { "golines", "gofumpt", "goimports", "typos" },
    sh = { "shfmt", "typos" },
    yaml = { "yamlfix", "typos" },
    Jenkinsfile = { "npm-groovy-lint", "typos" },
    groovy = { "npm-groovy-lint", "typos" },
    typescript = { "prettier", "typos" },
  },

  format_after_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = true,
  },

  notify_on_error = true,

  formatters = {
    ["goimports"] = {
      args = {
        "-local",
        "gitlab.fortra.com",
      },
    },
    ["golines"] = {
      args = {
        "-m",
        "120",
      },
    },
  },
}

return options
