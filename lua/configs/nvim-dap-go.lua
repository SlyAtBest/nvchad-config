local map = vim.keymap.set

-- dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Debug add breakpoint at line" })

map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Debug open UI sidebar" })

map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Debug go test" })

map("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "Debug last go test" })
