-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
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
