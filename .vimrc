"General

"Sets how many lines of history VIM has to remeber
filetype off
execute pathogen#infect()
filetype plugin indent on
set history=700
let mapleader=','
"Enable filetype plugins

filetype plugin on
filetype indent on
set nocompatible

"set to auto read when a file is changed from the outside

set autoread

"Set scrolloff high so that the cursor stays in the middle of the screen
set so=999
set colorcolumn=80
"Always show current position
set ruler
autocmd BufNewFile,BufRead *.tex setlocal textwidth=80
"A bugger becomes hidden when it is abandoned
set hid

set ignorecase
set smartcase

set hlsearch
set incsearch

set showmatch

"No sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Colours"

"Enable syntac highlighting
syntax enable
syntax on

set omnifunc=syntaxcomplete#Complete

colorscheme desert
"set background=dark

"Change colour scheme to zenburn
"
set t_Co=256
colorscheme zenburn


"All about buffers
"
"Open new, empty buffer

nmap <leader>T :enew<cr>

" Move to next buffer
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

 "Close buffer
nmap <leader>bq :bp<BAR> bd #<CR>

 "Show all open buffers and their status
 "
nmap <leader>bl :ls<CR>

"Leave cursor where it lays
set nostartofline

"Turn backup off
"set nobackup
"set nowb
"set noswapfile

"swap files are useful, but put them in their own directory so they don't clutter up the directory`
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

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



"use markdown for vimwiki
" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"
""" FocusMode
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
noremap <F1> :call ToggleFocusMode()<cr>

function! ToggleEncrypt()
    set cm=blowfish2
    set viminfo=
    set nobackup
    set nowritebackup
endfunc
noremap <F12> :call ToggleEncrypt()<cr>
"""Autoboot into encrypt mode when opening .e files
autocmd BufReadPre,FileReadPre *.e :call ToggleEncrypt()
set pastetoggle=<F2>

