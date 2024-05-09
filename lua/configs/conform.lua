local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "golines", "gofumpt", "goimports-reviser" },
  },

  format_after_save = {
    -- These options will be passed to conform.format()
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
