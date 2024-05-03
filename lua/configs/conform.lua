local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "goimports-reviser", "golines", "gofumpt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  notify_on_error = true,

  formatters = {
    ["goimports-reviser"] = {
      args = {
        "-rm-unused",
        "$FILENAME",
      },
    },
  },
}

require("conform").setup(options)
