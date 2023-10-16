local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

local default_opts = {noremap = true, silent = true}

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Add Packer commands because we are not loading it at startup
cmd "silent! command PackerClean lua require 'plugins' require('packer').clean()"
cmd "silent! command PackerCompile lua require 'plugins' require('packer').compile()"
cmd "silent! command PackerInstall lua require 'plugins' require('packer').install()"
cmd "silent! command PackerStatus lua require 'plugins' require('packer').status()"
cmd "silent! command PackerSync lua require 'plugins' require('packer').sync()"
cmd "silent! command PackerUpdate lua require 'plugins' require('packer').update()"

map('n', '<leader><space>', '<cmd>Telescope find_files hidden=true<CR>', default_opts)
map('n', '<leader>/', '<cmd>Telescope live_grep hidden=true<CR>', default_opts)
-- cycle buffers
map('n', '<Tab>', '<cmd>BufferNext<CR>', default_opts)
map('n', '<S-Tab>', '<cmd>BufferPrevious<CR>', default_opts)
-- disable  search highlighting
map('n', '<Esc><Esc>', '<cmd>nohlsearch<CR><Esc>', default_opts)
-- window navigation
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)
map('n', '<leader>1', '<cmd>BufferGoto 1<CR>', default_opts)
map('n', '<leader>2', '<cmd>BufferGoto 2<CR>', default_opts)
map('n', '<leader>3', '<cmd>BufferGoto 3<CR>', default_opts)
map('n', '<leader>4', '<cmd>BufferGoto 4<CR>', default_opts)
map('n', '<leader>5', '<cmd>BufferGoto 5<CR>', default_opts)
map('n', '<leader>6', '<cmd>BufferGoto 6<CR>', default_opts)
map('n', '<leader>7', '<cmd>BufferGoto 7<CR>', default_opts)
map('n', '<leader>8', '<cmd>BufferGoto 8<CR>', default_opts)
map('n', '<leader>9', '<cmd>BufferGoto 9<CR>', default_opts)
-- save
map('n', '<C-s>', '<cmd>wall<CR>', default_opts)
-- quit
map('n', '<C-q>', '<cmd>wq!<CR>', default_opts)
map('n', '<leader><C-q>', '<cmd>q!<CR>', default_opts)
-- search string
map('n', '<F4>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- easy align
map('n', 'ga', ':EasyAlign<CR>', default_opts)
map('x', 'ga', ':EasyAlign<CR>', default_opts)
-- hop
-- map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
-- map('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
-- map('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
-- map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

local present, cmp = pcall(require, "which-key")
if present then
  local wk = require("which-key")

  wk.register({
    ["<space>"] = "which_key_ignore",
    ["/"] = "which_key_ignore",
    ["1"] = "which_key_ignore",
    ["2"] = "which_key_ignore",
    ["3"] = "which_key_ignore",
    ["4"] = "which_key_ignore",
    ["5"] = "which_key_ignore",
    ["6"] = "which_key_ignore",
    ["7"] = "which_key_ignore",
    ["8"] = "which_key_ignore",
    ["9"] = "which_key_ignore",
    ["<C-q>"] = "which_key_ignore",
    q = { '<cmd>q<CR>', 'Close window' },
    e = { '<cmd>NvimTreeRefresh<CR><cmd>NvimTreeToggle<CR>', 'File manager'},
    j = {
      name = "jump",
      j = { '<cmd>HopWordCurrentLine<CR>', 'Jump to word in current line' },
      w = { '<cmd>HopWord<CR>', 'Jump to word' },
      c = { '<cmd>HopChar1<CR>', 'Jump to char' },
      d = { '<cmd>HopChar2<CR>', 'Jump to 2 char' },
      l = { '<cmd>HopLine<CR>', 'Jump to line' },
    },
    b = {
      name = "buffers",
      f = { '<cmd>Telescope buffers<CR>', 'Find' },
      b = { '<cmd>BufferPick<CR>', 'Pick' },
      d = { '<cmd>BufferClose<CR>', 'Close' },
      c = { '<cmd>BufferCloseAllButCurrent<CR>', 'Close All Except Current' },
    },
    f = {
      name = "files",
      f = { "<cmd>Telescope find_files<CR>", "Find File" },
      r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File", noremap=false },
    },
    s = {
      name = "sessions",
      l = { "<cmd>SessionManager load_last_session<CR>", "Open last session" },
      h = { "<cmd>SessionManager load_session<CR>", "Sessions list" },
      s = { "<cmd>SessionManager save_session<CR>", "Save session" },
      c = { "<cmd>SessionManager load_current_dir_session<CR>", "Load current dir session" },
    },
  }, { prefix = "<leader>" })
end
