return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  config = function()
    require "configs.nvim-dap-ui"
  end,
}