vim.treesitter.language.register("groovy", { "Jenkinsfile" })

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
      "go",
      "vhs",
      "bash",
      "helm",
      "markdown",
      "markdown_inline",
      "groovy",
      "typescript",
    },
  },
}
