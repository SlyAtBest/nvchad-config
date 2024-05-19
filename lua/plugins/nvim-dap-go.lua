return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = { "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-ui" },
  config = function()
    require "configs.nvim-dap-go"
  end,
}
