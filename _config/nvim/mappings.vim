" Basic Key Mappings
let mapleader="\<space>"
let maplocalleader = ","
"nnoremap <leader>vi :tabedit $MYVIMRC<CR>

" better indenting
vnoremap < <gv
vnoremap > >gv
" better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" escape
inoremap jk <Esc>
inoremap kj <Esc>
" move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" save
"nnoremap <leader>w :w<CR>
" reload file
"nnoremap <leader>e :e!<CR>
" save and close file
nnoremap <silent> <C-Q> :wq!<CR>
" close file
"nnoremap <leader>qq :q!<CR>
" use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" select all text
noremap vA ggVG
" disable search highlighting
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>
" delete without erase register
"nnoremap <leader>dd "_d
"xnoremap <leader>dd "_d
" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" switch between tabs
":nnoremap <leader>] :bnext<CR>
":nnoremap <leader>[ :bprevious<CR>
":nnoremap <leader>d :bdelete<CR>
" switch between tabs
"nmap <leader>1 1gt
"nmap <leader>2 2gt
"nmap <leader>3 3gt
"nmap <leader>4 4gt
"nmap <leader>5 5gt
"nmap <leader>6 6gt
"nmap <leader>7 7gt
"nmap <leader>8 8gt
"nmap <leader>9 9gt
" creating splits with empty buffers in all directions
"nnoremap <leader>hn :leftabove  vnew<CR>
"nnoremap <leader>ln :rightbelow vnew<CR>
"nnoremap <leader>kn :leftabove  new<CR>
"nnoremap <leader>jn :rightbelow new<CR>
" creating splits with current buffer in all directions
"nnoremap <silent> <leader>hh :call JumpOrOpenNewSplit('h', ':leftabove vsplit', 0)<CR>
"nnoremap <silent> <leader>ll :call JumpOrOpenNewSplit('l', ':rightbelow vsplit', 0)<CR>
"nnoremap <silent> <leader>kk :call JumpOrOpenNewSplit('k', ':leftabove split', 0)<CR>
"nnoremap <silent> <leader>jj :call JumpOrOpenNewSplit('j', ':rightbelow split', 0)<CR>
" delete all hidden buffers
"nnoremap <silent> <leader><BS>b :call DeleteHiddenBuffers()<CR>
