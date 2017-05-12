call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sleuth'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'pearofducks/ansible-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'SirVer/ultisnips'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-tbone'

call plug#end()

" Add the g flag to search/replace by default
set gdefault
" No byte order mark
set nobomb
" Set leader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Enable line numbers
set number
" Make tabs as wide as a space
set tabstop=4
" Set reindent '<<' and '>>' width
set shiftwidth=4
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
" Don't require saving buffer contents before switching to another
set hidden
" Use smartcase behavior in search
set smartcase
" Highlight the line with the cursor
set cursorline
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
nnoremap <leader>l :Commits<CR>
nnoremap <leader>s :GFiles?<CR>
nnoremap <leader>w :Windows<CR>

" Pymode configuration

let g:pymode_breakpoint_bind = '<leader>k'

let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'

let g:pymode_folding = 0

let g:pymode_rope_completion = 0

let g:pymode_rope_autoimport = 1

let g:pymode_rope_autoimport_bind = '<leader>i'

let g:pymode_lint_cwindow = 0

let g:pymode_options_max_line_length = 99

" Base16 theme configuration
let base16colorspace=256

colo base16-onedark

" Python provider configuration
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

" Deoplete configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources = {}
let g:deoplete#sources.py = ['file', 'ultisnips', 'jedi']
let g:deoplete#delimiters = ['/', '.']
autocmd CompleteDone * pclose!

" Echodoc configuration
let g:echodoc_enable_at_startup = 1

" EditorConfig configuration
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" vim-airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTREE configuration
" Leader + n toggles NERDTREE
map <leader>n :NERDTreeToggle<CR>
" Close vim if the only window left open is a NERDTREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Close buffer shortcut
nnoremap <leader>d :bd<CR>

" Tmuxline configuration
let g:tmuxline_preset = {
      \'a' : '#S',
      \'win' : ['#I', '#W'],
      \'cwin': ['#I', '#W#F'],
      \'y' : ['#{cpu_percentage}', '%R', '%a %d/%m/%Y'],
      \'z' : '#H'}
" Ultisnips configuration
let g:UltiSnipsSnippetDirectories=$HOME.'/.vim/plugged/vim-snippets'
let g:UltiSnipsExpandTrigger='<tab>'
" Tmuxline conflicts with TPM
let g:airline#extensions#tmuxline#enabled = 0