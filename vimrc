"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc file with settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Install pathogen.vim
execute pathogen#infect()

" Turns on Syntax color-coding
syntax on

" Enables the backspace key on the keyboard
set bs=2

" Enables the mouse so I can use the mouse scroll wheel to scroll through
"set mouse=a
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Enables the PageUp and PageDown keys
map <PageUp> <C-U>
map <PageDown> <C-D>

" Shows matching braces and such
set showmatch

" Turns off annoying error sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turns on the ruler so I can see the row and column in the file
set ruler

" Enables highlighting of search results
set hlsearch

" Turns on regular expressions
set magic

" Use spaces instead of tabs, spart tabbing
set expandtab
set smarttab

" 1 tab = 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto Indent
"set si "Smart Indent
set wrap "wrap lines
filetype on "ADDED indenting
filetype plugin on "ADDED indenting
filetype indent on "ADDED indenting

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ \ \ Line:\ %l,%c
set number

" Establishes a color scheme
set background=dark
colorscheme darkblue " Fallback colorscheme
set term=xterm-256color
let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized

" Add max char indicator
match ErrorMsg '\%>120v.\+'

" Set nerdtree config (uncomment all of the below to use)
" autocmd vimenter * NERDTree "start automatically
" autocmd StdinReadPre * let s:std_in=1 "cont
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "cont
" map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close automatically

" Set powerline fonts for airplane
" Doesn't work on Cygwin
let g:airplane_powerline_fonts = 1

" Configure gitgutter
let g:gitgutter_realtime = 1
" let g:gitgutter_highlight_lines = 1 "Enable gitgitter highlight

au BufNewFile,BufRead *.cu  setf cu
au BufNewFile,BufRead *.vs  set filetype=verilog
au BufNewFile,BufRead *.vh  set filetype=verilog

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper Functions
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE '
  en
    return ''
endfunction
