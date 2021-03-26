set nocompatible                " makes Vim work without being Vi-compatible, all improvements/features available to the user.

" set SPACE as the leader key
let g:mapleader = "\<Space>"

" let g:python3_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = '/Users/xuchen/opt/anaconda3/bin/python3'
" let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.7/bin/python3'
" let g:python3_host_prog = '$HOME/Library/Python/3.7/bin/'
" let g:python3_host_prog = '$HOME/Library/Python/3.9/bin/'

set ruler              			 " Show the cursor position all the time
set iskeyword+=-             " treat dash separated words as a word text object"
set mouse=a                  " Enable your mouse
set splitbelow               " Horizontal splits will automatically be below
set splitright               " Vertical splits will automatically be to the right
set wrap                     " wrap lines 
set whichwrap+=b,h,l,<,>,[,]
if !exists('g:vscode')
  set t_Co=256               " Support 256 colors
  set termguicolors
  set lazyredraw             " Improve speed dealing with large files
  syntax enable              " Enables syntax highlighing
  set hidden                 " Required to keep multiple buffers open multiple buffers
  set backspace=indent,eol,start
  set encoding=utf-8         " The encoding displayed
  set pumheight=10           " Makes popup menu smaller
  set fileencoding=utf-8     " The encoding written to file
  " set shortmess=at
  set shortmess+=c           " Don't pass messages to |ins-completion-menu|.
  set signcolumn=yes
  set cmdheight=2            " More space for displaying messages
  let g:indentLine_enabled = 0
  set conceallevel=2         " So that I can see `` in markdown files
  set concealcursor=v        " conceal and show up when cursor hovers at text
  set tabstop=2              " Insert 2 spaces for a tab
  set shiftwidth=2           " Change the number of space characters inserted for indentation
  set softtabstop=2
  set smarttab               " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab              " Converts tabs to spaces
  set smartindent            " Makes indenting smart
  set autoindent             " Good auto indent
  set laststatus=2           " Always display the status line
  set relativenumber         " Line numbers
  set cursorline             " Enable highlighting of the current line
  set background=dark        " tell vim what the background color looks like
  set showtabline=2          " Always show tabs
  set noshowmode             " We don't need to see things like -- INSERT -- anymore
  set guioptions-=l          " remove scrollbar
  set guioptions-=L          " remove scrollbar
  set guioptions-=r          " remove scrollbar
  set guioptions-=R          " remove scrollbar
endif
set nobackup                 " This is recommended by coc
set nowritebackup            " This is recommended by coc
set noswapfile
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
set history=100					     " Default = 8
set linebreak					       " Only wrap at sensible places
set updatetime=300           " Faster completion
set timeoutlen=500           " By default timeoutlen is 1000 ms
set formatoptions-=cro       " Stop newline continution of comments

" yank to system clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus  
  endif
endif

set ignorecase               " search ignores case 
set smartcase                " search uses smartcase
set incsearch
set hlsearch

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

if !exists('g:vscode')
  " set autowrite
  set autowriteall
  au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

  filetype plugin on
  filetype plugin indent on
endif
