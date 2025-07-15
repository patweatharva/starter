-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "ayu_dark",
    transparency = false,

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
    },
}

M.nvdash = { load_on_startup = true }

-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

-- M.ui.cmp = {
--     icons_left = true,      -- only for non-atom styles!
--     style = "default", -- default/flat_light/flat_dark/atom/atom_colored
--     abbr_maxwidth = 60,
--     -- for tailwind, css lsp etc
--     format_colors = { lsp = true, icon = "󱓻" },
-- }

-- M.ui.statusline = {
--     enabled = true,
--     theme = "default", -- default/vscode/vscode_colored/minimal
--     -- default/round/block/arrow separators work only for default statusline theme
--     -- round and block will work for minimal theme only
--     separator_style = "default",
--     order = nil,
--     modules = nil,
-- }
return M
