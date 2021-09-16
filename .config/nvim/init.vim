call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/delimitMate'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'janko/vim-test'
Plug '/usr/bin/fzf'
Plug 'Shougo/echodoc.vim'
Plug 'chriskempson/base16-vim'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'pearofducks/ansible-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
Plug 'dhruvasagar/vim-prosession'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'neomake/neomake'
Plug 'brooth/far.vim'
Plug 'mgedmin/coverage-highlight.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mtth/scratch.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vimwiki/vimwiki'
Plug 'psliwka/vim-smoothie'
Plug 'stephpy/vim-yaml', {'for': 'yaml'}
Plug 'andrewstuart/vim-kubernetes', {'for': 'yaml'}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'hashivim/vim-terraform', {'for': 'terraform'}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocUpdate'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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
" Ignore case when searching (needed for smartcase)
set ignorecase
" Use smartcase behavior in search
set smartcase
" Highlight the line with the cursor
set cursorline
" Don't wrap lines
set nowrap
" Set Tagbar shortcut
noremap <Leader>t :TagbarToggle<CR>
" Easier tab switching
nnoremap <Leader><Tab> :bn<CR>
nnoremap <Leader><S-Tab> :bp<CR>
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
" Use system clipboard
set clipboard+=unnamedplus
" Use vertically splitted diffs by default
set diffopt+=vertical
" Use the mouse
set mouse=a
" Always show the signcolumn
set signcolumn=yes

" fzf shortcuts
nnoremap <leader>f <cmd>Telescope find_files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>s :GFiles?<CR>
nnoremap <leader>b <cmd>Telescope buffers<CR>
nnoremap <leader>l :Commits<CR>
nnoremap <leader>w :Windows<CR>

" FZF configuration
let g:fzf_nvim_statusline = 0

" Base16 theme configuration
let base16colorspace=256

colo base16-seti

" Python provider configuration
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

" Echodoc configuration
let g:echodoc_enable_at_startup = 1

" EditorConfig configuration
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" vim-airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_seti'

" NERDTREE configuration
" Leader + n toggles NERDTREE
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['__pycache__$']

" Close buffer shortcut
nnoremap <leader>d :bd<CR>

" Search shortcut
nnoremap <leader>s <cmd>Telescope live_grep<CR> 

" Tmuxline configuration
let g:tmuxline_preset = {
      \'a' : '#S',
      \'win' : ['#I', '#W'],
      \'cwin': ['#I', '#W#F'],
      \'y' : ['#{cpu_percentage}', '%R', '%a %d/%m/%Y'],
      \'z' : '#H'}

" Ultisnips configuration
let g:UltiSnipsSnippetsDir='~/.local/share/nvim/plugged/vim-snippets/UltiSnips'
let g:UltiSnipsExpandTrigger="<tab>"
" Tmuxline conflicts with TPM
let g:airline#extensions#tmuxline#enabled = 0

" Set up :SudoWrite alias
cabbrev SW SudoWrite

" Supertab configuration
let g:SuperTabDefaultCompletionType = "<c-n>"

" Prosession configuration
let g:prosession_dir = "~/.local/share/nvim/session/"
let g:prosession_tmux_title = 1
let g:prosession_on_startup = 1

" Neomake configuration
" Run Neomake when reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)

let g:neomake_python_pylint_maker = {
      \ 'args': ['--extension-pkg-whitelist=pydantic'],
      \ }

" Fugitive-Gitlab configuration
let g:fugitive_gitlab_domains = ['https://gitlab.rtrsupport.de']

" Groovy syntax highlighting for jenkinsfile
au BufNewFile,BufRead Jenkinsfile set filetype=groovy

" coc.nvim configuration
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Override <CR> to work with coc.nvim completions
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Shortcut for organizing imports of the current buffer.
nnoremap <leader>o :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

" Far.vim configuration
let g:far#source = 'rg'

" vim-terraform configuration
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

if (has("termguicolors"))
  set termguicolors
endif

" Tagbar configuration
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

" Neovim terminal configuration
" Start in insert mode
autocmd TermOpen * startinsert
" Start terminal under the current buffer with shortcut
nnoremap <leader>e :below split \| resize 10 \| te<CR>

" Lua config

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

local telescope_actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = telescope_actions.close
      },
    },
  }
}
EOF
