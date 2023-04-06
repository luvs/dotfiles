-- functions for setting highlights
local fg = require("core.utils").fg
local fg_bg = require("core.utils").fg_bg
local bg = require("core.utils").bg

local present, base16 = pcall(require, 'base16-colorscheme')

if present then
  vim.cmd('colorscheme base16-nord')
--  vim.cmd('colorscheme base16-eighties')
end

--local colors = {
--   white = "#abb2bf",
--   darker_black = "#2a303c",
--   black = "#2E3440", --  nvim bg
--   black2 = "#343a46",
--   one_bg = "#373d49",
--   one_bg2 = "#464c58",
--   one_bg3 = "#494f5b",
--   grey = "#4b515d",
--   grey_fg = "#565c68",
--   grey_fg2 = "#606672",
--   light_grey = "#646a76",
--   red = "#BF616A",
--   baby_pink = "#de878f",
--   pink = "#d57780",
--   line = "#3a404c", -- for lines like vertsplit
--   green = "#A3BE8C",
--   vibrant_green = "#afca98",
--   blue = "#7797b7",
--   nord_blue = "#81A1C1",
--   yellow = "#EBCB8B",
--   sun = "#e1c181",
--   purple = "#aab1be",
--   dark_purple = "#B48EAD",
--   teal = "#6484a4",
--   orange = "#e39a83",
--   cyan = "#9aafe6",
--   statusline_bg = "#333945",
--   lightbg = "#3f4551",
--   lightbg2 = "#393f4b",
--   pmenu_bg = "#A3BE8C",
--   folder_bg = "#7797b7",
--}

-- Custom colors
fg("CursorLineNr", 'white')
fg("LineNr", '#4b515d')
fg("Comment", '#646a76')

-- same it bg, so it doesn't appear
fg("EndOfBuffer", '#2e3440')
