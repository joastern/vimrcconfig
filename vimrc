" vimrc
" vim configuration file

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

" Common shortcuts
set clipboard=unnamed
nmap <C-a> ggVG
vmap <C-c> y<Esc>i
map <C-s> <Esc>:w<cr>
imap <C-s> <Esc>:w<cr>
map <C-v> <Esc>pi
imap <C-v> <Esc>pi
map <C-w> <Esc>:x<cr>
imap <C-w> <Esc>:x<cr>
vmap <C-x> d<Esc>i
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>ui

" Update shortcut
map <C-F12> :!rm -rf ~/bin/vimrc && git clone http://bitbucket.org/4U6U57/vimrc ~/bin/vimrc && cd ~/bin/vimrc && make<CR><CR>

" Establishes a color scheme
set background=dark
colorscheme darkblue " Fallback colorscheme
set term=xterm-256color
let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized

" Add max char indicator
set textwidth=80
" match ErrorMsg '\%>120v.\+'
map <F6> gqi
imap <F6> <Esc>gqi
au FileType json setlocal textwidth=0
au FileType tex setlocal spell
au FileType txt setlocal spell
au FileType gitcommit setlocal textwidth=0 spell

" Auto format (similar to G=gg) (replaced by vim-autoformat)
" map <F7> mzG=gg`z " Auto format with F7

" Set nerdtree config (uncomment all of the below to use)
map <F4> <Esc>:NERDTreeToggle<CR>i
imap <F4> <Esc>:NERDTreeToggle<CR>i

" vim-airplane
" Doesn't work on Cygwin
let g:airplane_powerline_fonts = 1 " Set powerline fonts

" vim-autoformat
map <F3> <Esc>:Autoformat<CR>i
imap <F3> <Esc>:Autoformat<CR>i

" Configure gitgutter
let g:gitgutter_realtime = 1
" let g:gitgutter_highlight_lines = 1 "Enable gitgitter highlight

" Configure undotree
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif

au BufNewFile,BufRead *.cu  setf cu
au BufNewFile,BufRead *.vs  set filetype=verilog
au BufNewFile,BufRead *.vh  set filetype=verilog
au BufNewFile,BufRead README set filetype=txt

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
