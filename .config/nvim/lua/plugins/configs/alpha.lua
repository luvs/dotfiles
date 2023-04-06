local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
  dashboard.button( "r", "  > Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button( "l", "  > Open last session" , ":LoadLastSession<CR>"),
  dashboard.button( "s", "  > Sessions" , ":Telescope sessions<CR>"),
  dashboard.button( "c", "  > Config" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
  dashboard.button( "u", "  > Update plugins" , ":PackerUpdate<CR>"),
  dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

local function footer()
  -- Number of plugins
  local total_plugins = #vim.tbl_keys(packer_plugins)
  local datetime = os.date "%d-%m-%Y  %H:%M:%S"
  local plugins_text = "\t" .. total_plugins .. " plugins  " .. datetime

  -- Quote
  local fortune = require "alpha.fortune"
  local quote = table.concat(fortune(), "\n")

  return plugins_text .. "\n" .. quote
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Constant"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Function"
dashboard.section.buttons.opts.hl_shortcut = "Type"
dashboard.opts.opts.noautocmd = true

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
]])
