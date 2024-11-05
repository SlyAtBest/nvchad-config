local map = vim.keymap.set

map("n", "<leader>rt", function()
  require("neotest").run.run()
end, { desc = "Test run test under cursor" })

map("n", "<leader>rl", function()
  require("neotest").run.run_last()
end, { desc = "Test run the last test that was run" })

map("n", "<leader>rtf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Test run all tests in file" })

map("n", "<leader>rtp", function()
  require("neotest").run.run(vim.fn.expand "%:h")
end, { desc = "Test run all tests in package" })

map("n", "<leader>rts", function()
  require("neotest").run.run {
    suite = true,
  }
end, { desc = "Test run all tests in suite" })

map("n", "<leader>st", function()
  local neotest = require "neotest"
  local ret = neotest.run.get_last_run()
  neotest.run.stop(ret)
end, { desc = "Test stop the last test run" })

map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Test show summary" })

map("n", "<leader>to", function()
  require("neotest").output.open { enter = true }
end, { desc = "Test open the test output" })

require("neotest").setup {
  output = { enabled = true, open_on_run = true },
  discovery = {
    enabled = false,
    concurrent = 1,
  },
  -- status = { virtual_text = true },
  adapters = {
    require "neotest-golang" {
      go_test_args = {
        "-v",
        "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
        "-count=1",
      },
      -- recursive_true = true,
      -- experimental = {
      --   test_table = true,
      -- },
    },
  },
}
