-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.autoindent = true                          -- set the cursor at same indent as line above
vim.opt.breakindent = true                         -- every wrapped line will continue visually indented
vim.opt.colorcolumn = ''                           -- text width
vim.opt.copyindent = true                          -- use existing indents for new indents
vim.opt.diffopt = 'filler,vertical'                -- default behavior for diff
vim.opt.encoding = 'utf8'                          -- file encoding
vim.opt.errorbells = false                         -- disable error bells
vim.opt.swapfile = false                           -- disable creating of *.swp files

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.autoformat = false
