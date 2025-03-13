-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.ui = {
  statusline = {
    theme = "default",
    -- order = { "mode", "file", "git", "%=", "path", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    order = { "mode", "git", "%=", "path", "lsp_msg", "%=", "diagnostics", "cwd", "cursor" },
    modules = {
      path = function()
        return vim.fn.expand "%:p"
      end,
    },
  },

  tabufline = {
    lazyload = false,
  },
}

return M
