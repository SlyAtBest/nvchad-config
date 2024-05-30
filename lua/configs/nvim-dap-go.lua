local map = vim.keymap.set

map("n", "<leader>bp", "<cmd> DapToggleBreakpoint <CR>", { desc = "Debug add breakpoint at line" })

map("n", "<leader>gdt", function()
  require("dap-go").debug_test()
end, { desc = "Debug go test" })

map("n", "<leader>gdl", function()
  require("dap-go").debug_last()
end, { desc = "Debug last go test" })

map("n", "<leader>gd", function()
  require("dap").continue()
end, { desc = "Debug run debugger" })

map("n", "<leader>dui", function()
  require("dapui").toggle()
end, { desc = "Debug open ui" })

require("dap-go").setup()
