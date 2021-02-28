" syntax
syntax enable
set nocompatible

set encoding=utf8
set clipboard=unnamed,unnamedplus                           " set system clipboard
set fillchars=vert:│
set number                                                  " enable line numbers
set noswapfile                                              " disable creating of *.swp files
set noshowmode
set hidden                                                  " hide buffers instead of closing
set mouse=                                                  " disable mouse
set noerrorbells                                            " disable error bells
set lazyredraw                                              " speed up on large files
set ignorecase                                              " ignore case of letters
set gdefault                                                " when on, the :substitute flag 'g' is default on
set smartcase                                               " ignore case if search pattern is lower case, case-sensitive otherwise
set showmatch                                               " highlight matching [{()}]
set nowrap                                                  " no wrap lines by default
set whichwrap+=<,>,[,],h,l
set textwidth=0                                             " disable auto break long lines
set autoindent                                              " set the cursor at same indent as line above
set smartindent                                             " try to be smart about indenting (c-style)
set expandtab                                               " expand <tab>s with spaces; death to tabs!
set shiftwidth=2                                            " spaces for each step of (auto)indent
set softtabstop=2                                           " set virtual tab stop (compat for 8-wide tabs)
set tabstop=2                                               " for proper display of files with tabs
set shiftround                                              " always round indents to multiple of shiftwidth
set copyindent                                              " use existing indents for new indents
set preserveindent                                          " save as much indent structure as possible
set ruler                                                   " show the cursor position all the time
set splitbelow                                              " horizontal splits will automatically be below
set splitright                                              " vertical splits will automatically be to the right
set laststatus=2                                            " always display the status line
set cursorline                                              " enable highlighting of the current line
set showtabline=2                                           " Always show tabs
set nobackup                                                " This is recommended by coc
set nowritebackup                                           " This is recommended by coc
set incsearch
set scrolloff=999                                           " always keep cursor at the middle of screen
set virtualedit=onemore                                     " allow the cursor to move just past the end of the line
set undolevels=5000                                         " set maximum undo levels
set diffopt=filler,vertical                                 " default behavior for diff
set foldenable                                              " enable folding
set foldlevelstart=10                                       " open most folds by default
set foldnestmax=10                                          " 10 nested fold max
set foldmethod=indent                                       " fold based on indent leve
set wildignore+=*.a,*.o,*.pyc,*~,*.swp,*.tmp                " ignore pattern for wildmenu
set wildmode=list:longest,full
set list                                                    " show hidden characters
set listchars=tab:•·,trail:·,extends:❯,precedes:❮,nbsp:×
set showcmd                                                 " always show current command
set regexpengine=1
set lazyredraw
set autowrite 
set re=0

autocmd FileType vim setlocal foldmethod=marker
filetype indent on                                          " load filetype-specific indent files

" Remember cursor position between vim sessions
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif
