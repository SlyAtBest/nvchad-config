return {
  "andythigpen/nvim-coverage",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = { "go" },
  config = function()
    require("coverage").setup()
  end,
}
