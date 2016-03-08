" Tom's vim config file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"========================= GENERAL SETTINGS ============================"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on colors
set t_Co=256

" Turn on the mouse
set mouse=a

" Configure setting for Vundle - the package manager for vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" List of plugins managed by Vundle. Super easy to install.
" Just list "Plugin '<githubUsername>/<project>' and it installs
" it for you! Just do the command ':PluginInstall'. ':PluginUpdate' to update
call vundle#begin()
" Have Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" A directory tree in vim! Open up files and whatnot
Plugin 'scrooloose/nerdtree'

" Autocomplete plugin
Plugin 'Valloric/YouCompleteMe'

" Cool interface at the bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git changes plugin
Plugin 'airblade/vim-gitgutter'
call vundle#end()
" Done with Vundle config

" Turn on plugins
filetype plugin on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"========================== PLUGIN SETTINGS ==========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ### vim-airline
" Turns on statusline
set laststatus=2
" Theme
let g:airline_theme="powerlineish"

" ###YouCompleteMe
" Set the rules for where to load conf.py files from (only load from this
" directory and never from anywhere else)
let g:ycm_extra_conf_globlist = ['~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/*', '!/*']
" Set the path to the .ycm_extra_conf.py file for semantic completion
let g:ycm_global_ycm_extra_conf = expand('$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py')
" Get rid of that pesky preview window that pops up when doing '->'
set completeopt=menuone

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"========================== SYNTAX SETTINGS ============================"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make it so that tabs are multiple space characters
set expandtab

" Set the number of spaces that make up a tab
set tabstop=4

" Change all exisiting tab characters to match my tab config
retab

" Change the number of space characters inserted after indentation
set shiftwidth=4

" Auto indent the lines
set autoindent

" Turn on syntax highlighting
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=========================== VISUAL SETTINGS ==========================="
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on theme
colorscheme nour

" Highlight search term
set hlsearch

" When searching ignore case... Unless a capital letter is in the search
set ignorecase
set smartcase

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Show line number and relative line numbers
set number
set relativenumber

" Customize appearance of cursor crosshairs
hi CursorLine cterm=None ctermbg=8 ctermfg=None guifg=None
hi CursorColumn cterm=None ctermbg=8 ctermfg=None guifg=None
" Highlight current horizontal and verticle lines
set cursorline
set cursorcolumn
