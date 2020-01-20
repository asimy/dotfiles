set shell=bash
let mapleader=" "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" vundle packages
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'ZoomWin'
Plugin 'airblade/vim-gitgutter'
Plugin 'ajh17/VimCompletesMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'craigemery/vim-autotag'
Plugin 'ctrlp.vim'
Plugin 'dense-analysis/ale'
Plugin 'dyng/ctrlsf.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ervandew/ag'
Plugin 'fatih/vim-go'
Plugin 'garbas/vim-snipmate'
Plugin 'isRuslan/vim-es6'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'matchit.zip'
Plugin 'mhinz/vim-grepper'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mxw/vim-jsx'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
" Plugin 'psf/black'
Plugin 'railscasts'
Plugin 'rhysd/committia.vim'
Plugin 'rhysd/vim-crystal'
Plugin 'rking/ag.vim'
Plugin 'slim-template/vim-slim'
" Plugin 'tComment'
Plugin 'thiagoalessio/rainbow_levels.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tomtom/tlib_vim'
Plugin 'toyamarinyon/vim-swift'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tristen/vim-sparkup'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'wincent/ferret'
Plugin 'wincent/terminus'
Plugin 'wting/rust.vim'
Plugin 'xoria256.vim'

" Optional:
" Plugin 'honza/vim-snippets'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" vim options
filetype plugin indent on
syntax on
" cabbr te tabedit
colorscheme railscasts
set background=dark
set expandtab
set nocompatible
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showtabline=2
set number
set relativenumber
set wrap
set backspace=0
set t_Co=256
set colorcolumn=+1 " red line and over is error
set textwidth=120
set hlsearch
set encoding=utf-8
" Keep (hybrid) relative numbering in current buffer except in insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"turn on elm autoformatting
" turn off vim-markdown folding
let g:vim_markdown_folding_disabled=1
" let g:black_linelength=120

" Python support
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set foldmethod=indent |
    \ set foldlevel=99

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set backupcopy=yes

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" ALE linter and fixer settings
" 'add_blank_lines_for_python_control_statements', 
let g:ale_fixers = {
\  'javascript': ['remove_trailing_lines', 'trim_whitespace', 'eslint', 'prettier', 'prettier-eslint', 'standard'],
\  'ruby': ['remove_trailing_lines', 'trim_whitespace', 'rubocop'],
\  'python': ['black', 'remove_trailing_lines', 'trim_whitespace', 'isort'],
\  'elixir': ['credo', 'dialyxir', 'dogma', 'mix'],
\  'yaml':['prettier']
\  }
let g:ale_python_black_options='--line-length=120'
"
" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

" vim-grepper settings

let g:grepper       = {}
let g:grepper.tools = ['grep', 'git', 'rg']

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" netrw settings
" tree style list style
let g:netrw_liststyle = 3
" open files in previous window
let g:netrw_browse_split = 4
" set percentage width for netrw split
let g:netrw_winsize = 20
let g:loaded_python_provider = 1

set clipboard=unnamed
