"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme wombat256mod
"colorscheme desert
"colorscheme railscasts

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points
set mouse=a     "some stuff to get the mouse going in term
set t_Co=256    "tell the term has 256 colors
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nobackup
set number
set paste

if v:version >= 703
    "undo settings
    set undodir=~/.vim/undofiles
    set undofile
endif

nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <C-b> :BufExplorer<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Plugins " {{{
call vundle#rc()

Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-sensible'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kana/vim-fakeclip'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'mileszs/ack.vim'
Bundle 'eglimi/vim-rust'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'jnwhiteh/vim-golang'
