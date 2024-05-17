local map = vim.keymap.set

map("n", "<leader>bp", "<cmd> DapToggleBreakpoint <CR>", { desc = "Debug add breakpoint at line" })

map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Debug open UI sidebar" })

map("n", "<leader>gdt", function()
  require("dap-go").debug_test()
end, { desc = "Debug go test" })

map("n", "<leader>gdl", function()
  require("dap-go").debug_last()
end, { desc = "Debug last go test" })

require("dap-go").setup()
