" """"""""""""""""""""""""""""""""""""""""""""
" name: .vimrc
" auth: lucas c
" url:  http://github.com/theoretick/dotfiles
" desc: config file for Vim
" """"""""""""""""""""""""""""""""""""""""""""
" enable colors
syntax on
colors molokai
set bg=dark

" filetype detection and plugin support
filetype on
filetype plugin on

" enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F

" linenumbers, ruler
set number
set ruler

" better search
set incsearch
set hlsearch
"unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" show cursor position with horiz line and
" keep two visible lines below cursor at all times
set cursorline
set scrolloff=2

" Make the command line 2 lines high and change statusline display to
" something that looks useful.
set cmdheight=2
set laststatus=2
set showcmd

" Tab settings
set smarttab
set tabstop=8

" put backups and swaps in .vim folder
" set backupdir=~/.vim/backups
" set directory=~/.vim/swaps
" if exists("&undodir")
" 	set undodir=~/.vim/undo
" endif

" ---
" Python 
" ---
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8

" HTML etc
" ---
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" YAML support
" ---
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2
autocmd BufNewFile,BufRead *.sls setlocal ft=yaml
