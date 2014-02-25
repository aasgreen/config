"General

"Sets how many lines of history VIM has to remeber

set history=700

"Enable filetype plugins

filetype plugin on
filetype indent on

"set to auto read when a file is changed from the outside

set autoread


"Always show current position
set ruler

"A bugger becomes hidden when it is abandoned
set hid

set ignorecase
set smartcase

set hlsearch
set incsearch

set showmatch

set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Colours"

"Enable syntac highlighting
syntax enable

colorscheme desert
set background=dark

"Turn backup off
set nobackup
set nowb
set noswapfile

"Use spaces instead of tabs
set expandtab
set smarttab

"i tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

"moving around

"treat long lines as break lines
map j gj
map k gk


" Get rid of escape key

:imap jj <Esc>
