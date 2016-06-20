set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()       " required

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nathanaelkane/vim-indent-guides'

""" Syntax
Plugin 'chrisbra/csv.vim'
Plugin 'elzr/vim-json'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-markdown'

call vundle#end()         " required

filetype plugin indent on " required
