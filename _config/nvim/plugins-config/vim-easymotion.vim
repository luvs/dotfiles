let g:EasyMotion_do_mapping = 0

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
let g:EasyMotion_verbose = 0
let g:EasyMotion_do_shade = 0

nmap <silent> S <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

" moved to which key
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)

" Fix conflicts with Coc
" https://github.com/easymotion/vim-easymotion/pull/440#issuecomment-727844125
autocmd User EasyMotionPromptBegin silent! CocDisable
autocmd User EasyMotionPromptEnd silent! CocEnable
