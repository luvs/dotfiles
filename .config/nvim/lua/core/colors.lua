-- functions for setting highlights
local fg = require("core.utils").fg
local fg_bg = require("core.utils").fg_bg
local bg = require("core.utils").bg

local present, base16 = pcall(require, 'base16-colorscheme')

if present then
  vim.cmd('colorscheme base16-nord')
--  vim.cmd('colorscheme base16-eighties')
end

-- Custom colors
fg("CursorLineNr", 'white')
fg("LineNr", '#4b515d')
fg("Comment", '#646a76')

-- same it bg, so it doesn't appear
fg("EndOfBuffer", '#2e3440')
