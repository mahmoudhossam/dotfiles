set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-obsession'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sleuth'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdcommenter'
Plug 'chriskempson/base16-vim'

call plug#end()

filetype plugin indent on

" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Set leader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Make tabs as wide as a space
set tabstop=4
" Set reindent '<<' and '>>' width
set shiftwidth=4
" Highlight searches
set hlsearch
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Convert tabs to spaces
set expandtab
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
" Airline already shows this information, so disable it
set noshowmode
" Treat underscore as a word boundary
set iskeyword-=_
" Don't require saving buffer contents before switching to another
set hidden
" Set Tagbar shortcut
noremap <Leader>t :TagbarToggle<CR>
" Easier tab switching
nnoremap <Leader><Tab> :bn<CR>
nnoremap <Leader><S-Tab> :bp<CR>
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
" Make Syntastic use jshint
let g:syntastic_javascript_checkers = ['jshint']
" Make Syntastic use flake8
let g:syntastic_python_checkers = ['flake8']
" Make YCM use venv python
let g:ycm_python_binary_path = 'python'
" Use system clipboard
set clipboard+=unnamedplus

" Use the mouse
set mouse=a

" fzf shortcuts
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

" Pymode configuration

let g:pymode_breakpoint_bind = '<leader>k'

let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'

let g:pymode_python = 'python3'

let g:pymode_folding = 0

let g:pymode_options_max_line_length = 99

let g:pymode_rope = 0

" Base16 theme configuration
let base16colorspace=256

colo base16-default-dark

" Python provider configuration
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
