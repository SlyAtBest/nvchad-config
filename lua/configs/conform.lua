local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "golines", "gofumpt", "goimports" },
    sh = { "shfmt" },
    yaml = { "yamlfix" },
    Jenkinsfile = { "npm-groovy-lint" },
    groovy = { "npm-groovy-lint" },
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

require("conform").setup(options)
