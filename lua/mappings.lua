require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "vd", "<cmd>lua vim.diagnostic.open_float()<cr>")
map("n", "ri", function()
  require("nvchad.term").runner {
    id = "runner",
    pos = "float",
    cmd = function()
      local path = vim.fn.getcwd()
      return "INTEGRATION=true go test -v " .. path .. "/test/integration/integration_test.go" .. " --godog.tags=@wip"
    end,
    clear_cmd = false,
  }
end)
map("n", "rs", function()
  require("nvchad.term").runner {
    id = "runner",
    pos = "float",
    cmd = function()
      local path = vim.fn.getcwd()
      return "source variables.test && SYSTEM_TEST=true go test -v "
        .. path
        .. "/test/end2end/run_test.go"
        .. " --godog.tags=@wip"
    end,
    clear_cmd = false,
  }
end)
