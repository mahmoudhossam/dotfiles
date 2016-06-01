set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'taglist.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'itchyny/lightline.vim'

call vundle#end()
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
" Change mapleader
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
" Highlight searches
set hlsearch
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
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

" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Enable pymode indentation
let g:pymode_indent = 1

" Load rope plugin
let g:pymode_rope = 1

" Auto create and open ropeproject
let g:pymode_rope_auto_project = 1

" Enable autoimport
let g:pymode_rope_enable_autoimport = 1

" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1

let g:pymode_rope_autoimport_underlineds = 0

let g:pymode_rope_codeassist_maxfixes = 10

let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]

let g:pymode_rope_confirm_saving = 1

let g:pymode_rope_global_prefix = "<C-x>p"

let g:pymode_rope_local_prefix = "<C-c>r"

let g:pymode_rope_vim_completion = 0

let g:pymode_rope_guess_project = 1

let g:pymode_rope_goto_def_newwin = ""

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as a function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" Highlight equal operator
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all

" Highlight stars operator
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all

" Highlight `self`
let g:pymode_syntax_highlight_self = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0

" Disable code folding
let g:pymode_folding = 0

" Disable pylint code plugin
let g:pymode_lint = 0

" Set NERDTREE shortcut
nnoremap <silent> <F10> :NERDTreeToggle<CR>

" Set NERDTREE position
let g:NERDTreeWinPos="right"

" Set taglist shortcut
nnoremap <silent> <F9> :TlistToggle<CR>

" Use X clipboard
set clipboard=unnamedplus

" Use flake8
let g:syntastic_python_checkers=['flake8']
