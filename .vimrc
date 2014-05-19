" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Syntax highlighting
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Additional extensions
au BufNewFile,BufRead *.cuh set filetype=cuda

" Automatically reload a file that has been altered externally
set autoread

" Indention
set autoindent

" Convert tabs to spaces
"set expandtab
"set smarttab

" 4 character tabs
set shiftwidth=4
set softtabstop=4

" Fix backspaces on some systems
set backspace=2

" Line numbers
set number
set ruler

" Tab completion
set wildmenu
set wildmode=list:longest,full

" Case sensetivity in searches
set ignorecase
set smartcase

" And some other searching stuff (incremental, highlight, regex)
set incsearch
set hlsearch
set magic

" Neat searching shortcuts
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
map <silent> <leader><cr> :noh<cr>

" Return to last position when editing
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Status bar
set laststatus=2
set ttimeoutlen=5

" Kill bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" History and backup directory
set history=1024

"set backup
"set backupdir=~/.vim/backup
"set directory=~/.vim/tmp

" File plugins
filetype plugin on
filetype indent on

" Ignore compiled files in wildcards
set wildignore=*.o,*~,*.pyc

" Set utf8 as standard encoding
set encoding=utf8

" Use powerline fonts if airline is setup
let g:airline_powerline_fonts = 1

colorscheme grb256

