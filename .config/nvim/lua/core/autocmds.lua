local cmd  = vim.cmd                    -- execute Vim commands
local exec = vim.api.nvim_exec          -- execute Vimscript

--------------------------------------------------------------------------------
---- Autocmd
--------------------------------------------------------------------------------
-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]
-- 2 spaces for selected filetypes
cmd [[autocmd FileType groovy setlocal shiftwidth=4 tabstop=4]]
-- Add support formatting html with jinja2 templates
cmd[[ autocmd BufNewFile,BufRead *.html set filetype=htmldjango ]]

--------------------------------------------------------------------------------
---- Tips & tricks
--------------------------------------------------------------------------------
-- Return to last edit
cmd [[autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]
-- Highlight copied text
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)
