return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = { "mfussenegger/nvim-dap", "rcarriga/nvim-dap-ui" },
  config = function()
    require "configs.nvim-dap-go"
  end,
}
