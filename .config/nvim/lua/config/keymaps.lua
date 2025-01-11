-- Keymaps are automatically loaded on the VeryLazy event Add any additional keymaps here
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local default_opts = { noremap = true, silent = true }
local Util = require("lazyvim.util")

-- Move Lines
vim.keymap.set("n", "<C-A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<C-A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<C-A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<C-A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<C-A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Buffers
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>", default_opts)
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<cr>", default_opts)

-- Floating terminal
local lazyterm = function() Util.terminal(nil, { cwd = vim.loop.cwd() }) end
vim.keymap.set("n", "<leader>fT", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("n", "<leader>ft", function() Util.terminal() end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-/>", function() Util.terminal() end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })

-- lazygit
vim.keymap.set("n", "<leader>gG", function() Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }) end, { desc = "Lazygit (root dir)" })
vim.keymap.set("n", "<leader>gg", function() Util.terminal({ "lazygit" }, {esc_esc = false, ctrl_hjkl = false}) end, { desc = "Lazygit (cwd)" })
