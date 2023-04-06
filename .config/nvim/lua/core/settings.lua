local g = vim.g                                             -- global variables
local opt = vim.o                                           -- global/buffer/windows-scoped options

opt.colorcolumn = ''                                        -- Text width
opt.cmdheight = 1                                           -- Command line height
opt.cursorline = true                                       -- Cursor line
opt.number = true                                           -- Line numbers
opt.relativenumber = false                                  -- Relative numbers
opt.scrolloff = 999                                         -- Cursor in center screen
opt.undofile = true                                         -- Add undo
opt.splitright = true                                       -- Vertical split to right
opt.splitbelow = true                                       -- Horizontal split down
opt.termguicolors = true                                    -- 24-bit RGB colors
opt.encoding = 'utf8'                                       -- file encoding
opt.clipboard = 'unnamed,unnamedplus'                       -- access to system clipboard
opt.fillchars = 'vert:│'                                    -- change vertical lines
opt.swapfile = false                                         -- enable creating of *.swp files
opt.updatetime = 500                                        -- Save swap file timeout
opt.directory = '/Users/luvs/.vim/swap'                     -- swap file directory
opt.showmode = false
opt.hidden = true                                           -- hide buffers instead of closing
opt.errorbells = false                                      -- disable error bells
opt.ignorecase = true                                       -- ignore case of letters
opt.gdefault = true                                         -- when on, the :substitute flag 'g' is default on
opt.smartcase = true                                        -- ignore case if search pattern is lower case, case-sensitive otherwise
opt.showmatch = true                                        -- highlight matching [{()}]
opt.wrap = false                                            -- no wrap lines by default
opt.textwidth = 0                                           -- disable auto break long lines
opt.autoindent = true                                       -- set the cursor at same indent as line above
opt.smartindent = true                                      -- try to be smart about indenting (c-style)
opt.expandtab = true                                        -- expand <tab>s with spaces; death to tabs!
opt.shiftwidth = 2                                          -- spaces for each step of (auto)indent
opt.softtabstop = 2                                         -- set virtual tab stop (compat for 8-wide tabs)
opt.tabstop = 2                                             -- for proper display of files with tabs
opt.shiftround = true                                       -- always round indents to multiple of shiftwidth
opt.copyindent = true                                       -- use existing indents for new indents
opt.preserveindent = true                                   -- save as much indent structure as possible
opt.ruler = false                                           -- show the cursor position all the time
opt.laststatus = 2                                          -- always display the status line
opt.showtabline = 2                                         -- Always show tabs
opt.backup = false                                          -- This is recommended by coc
opt.writebackup = false                                     -- This is recommended by coc
opt.incsearch = true                                        -- Incremental search
opt.virtualedit = 'onemore'                                 -- allow the cursor to move just past the end of the line
opt.undolevels = 5000                                       -- set maximum undo levels
opt.diffopt = 'filler,vertical'                             -- default behavior for diff
opt.foldenable = true                                       -- enable folding
opt.foldlevelstart = 10                                     -- open most folds by default
opt.foldnestmax = 10                                        -- 10 nested fold max
opt.foldmethod = 'indent'                                   -- fold based on indent leve
opt.wildmode = 'list:longest,full'
opt.list = true                                             -- show hidden characters
opt.listchars = 'tab:•·,trail:·,extends:❯,precedes:❮,nbsp:×'
opt.showcmd = true                                          -- always show current command
opt.autowrite = true
opt.regexpengine = 0

local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
