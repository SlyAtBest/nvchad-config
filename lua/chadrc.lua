-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "oceanic-next",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  statusline = {
    order = { "mode", "file", "git", "%=", "path", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      path = function()
        return vim.fn.expand "%:p"
      end,
    },
  },
}

return M
