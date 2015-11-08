execute pathogen#infect()
syntax on
filetype plugin indent on

" Enable filetype plugins
filetype plugin on
filetype indent on

"line numbers
set number

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Turn on the WiLd menu
set wildmenu

"Always show current position
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
"set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Enable syntax highlighting
syntax enable

"256 colours
set t_Co=256

colorscheme jellybeans
set background=dark

"transparent background
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

" Set utf8 as standard encoding
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Always show the status line
set laststatus=2

" chagne dir to current file
set autochdir

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

"Fuzzy Finder
map <leader>f :FufFile<cr>
map <leader>b :FufBuffer<cr>
map <leader>l :FufLine<cr>

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" CtrlP
map <leader>p :CtrlP<cr>
