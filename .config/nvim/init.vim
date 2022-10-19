call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/delimitMate'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'janko/vim-test'
Plug '/usr/bin/fzf'
Plug 'Shougo/echodoc.vim'
Plug 'base16-project/base16-vim'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'pearofducks/ansible-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
Plug 'dhruvasagar/vim-prosession'
Plug 'brooth/far.vim'
Plug 'andythigpen/nvim-coverage'
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
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocUpdate'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-pack/nvim-spectre'
Plug 'dhruvasagar/vim-zoom'
Plug 'wakatime/vim-wakatime'

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
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the filename in the window titlebar
set title
" Convert tabs to spaces
set expandtab
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
" Airline already shows this information, so disable it
set noshowmode
" Ignore case when searching (needed for smartcase)
set ignorecase
" Use smartcase behavior in search
set smartcase
" Highlight the line with the cursor
set cursorline
" Don't wrap lines
set nowrap
" Easier tab switching
nnoremap <Leader><Tab> :bn<CR>
nnoremap <Leader><S-Tab> :bp<CR>
" Close buffer shortcut
nnoremap <leader>d :bd<CR>
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
" Enable hidden buffers
set hidden
" Enable modeline
set modeline
" Disable backup files
set nobackup
set nowritebackup
" Shorter update time
set updatetime=300

" Telescope shortcuts
nnoremap <leader>f <cmd>Telescope find_files<CR>
nnoremap <leader>s <cmd>Telescope git_status<CR>
nnoremap <leader>b <cmd>Telescope buffers<CR>
nnoremap <leader>l <cmd>Telescope git_commits<CR>
nnoremap <leader>h <cmd>Telescope oldfiles<CR>
nnoremap <leader>s <cmd>Telescope live_grep<CR>

" FZF configuration
let g:fzf_nvim_statusline = 0

" Base16 theme configuration
let base16colorspace=256

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
let g:airline_focuslost_inactive = 0

" Choose theme based on time of day
let now = strftime("%H")
let theme = trim(system("dconf read /org/gnome/desktop/interface/color-scheme"))
if theme == "'default'"
  colo base16-tomorrow
else
  colo base16-tomorrow-night
endif

" NERDTREE configuration
" Leader + n toggles NERDTREE
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['__pycache__$']

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
let g:prosession_tmux_title_format = "neovim - @@@"

" Groovy syntax highlighting for jenkinsfile
au BufNewFile,BufRead Jenkinsfile set filetype=groovy

" coc.nvim configuration
" Set outline shortcut
nnoremap <silent><nowait> <leader>t  :call ToggleOutline()<CR>
function! ToggleOutline() abort
  let winid = coc#window#find('cocViewId', 'OUTLINE')
  if winid == -1
    call CocActionAsync('showOutline', 1)
  else
    call coc#window#close(winid)
  endif
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use tab to trigger completion and navigation.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Map yaml.ansible to the correct type
let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Coc-nvim action mappings
nnoremap <leader>o :call CocAction('organizeImport')<CR>
nnoremap <leader>m :call CocAction('format')<CR>

" Far.vim configuration
let g:far#source = 'rg'

" Spectre configuration
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

" vim-terraform configuration
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

set termguicolors

" Neovim terminal configuration
" Start in insert mode
autocmd TermOpen * startinsert
" Start terminal under the current buffer with shortcut
nnoremap <leader>e :below split \| resize 10 \| te<CR>

" Lua config
luafile ~/.config/nvim/lua/init.lua