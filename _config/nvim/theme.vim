" theme
colorscheme base16-eighties
if (has('termguicolors'))
  set termguicolors
endif
" font
set guifont=JetBrainsMono\ Nerd\ Font
" nonblink cursor
set guicursor=a:blinkon0

" various columns
highlight clear SignColumn
highlight clear LineNr
highlight SignColumn ctermbg=0
highlight GitGutterAdd ctermbg=0
highlight GitGutterChange ctermbg=0
highlight GitGutterDelete ctermbg=0
highlight GitGutterChangeDelete ctermbg=0
highlight LineNr ctermbg=0
highlight VertSplit ctermbg=0
