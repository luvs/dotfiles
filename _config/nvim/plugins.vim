" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Theme and visual
" --------------------------------------------------
" Theme
Plug 'chriskempson/base16-vim'
" Status line
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Tabline
Plug 'romgrk/barbar.nvim'
" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
" Start Screen
Plug 'mhinz/vim-startify'
" Smooth scroll
Plug 'psliwka/vim-smoothie'
" Swap windows
Plug 'wesQ3/vim-windowswap'
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
" Colorizer
Plug 'norcalli/nvim-colorizer.lua'
" Intuitive buffer closing
Plug 'moll/vim-bbye'
" Maximize/restore windows
Plug 'szw/vim-maximizer'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Syntax Support
Plug 'sheerun/vim-polyglot'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Vista
Plug 'liuchengxu/vista.vim'
" Snippets
Plug 'mattn/emmet-vim'
" Interactive code
Plug 'metakirby5/codi.vim'
" Live server
Plug 'turbio/bracey.vim'
" Async tasks
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" Debugging
Plug 'puremourning/vimspector'

" FZF
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'

" Terminal
Plug 'voldikss/vim-floaterm'

" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'
" Quick text navigation
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
" Work with text
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
" Auto set indent settings
Plug 'tpope/vim-sleuth'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Closetags
Plug 'alvan/vim-closetag'
" Have the file system follow you around
Plug 'airblade/vim-rooter'
" Zen mode
Plug 'junegunn/goyo.vim'
" Undo
Plug 'mbbill/undotree'
" Find and replace
Plug 'brooth/far.vim'
" Fast tags rename
Plug 'AndrewRadev/tagalong.vim'

"Plug 'kevinhwang91/rnvimr'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
