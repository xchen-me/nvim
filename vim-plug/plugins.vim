" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'unblevable/quick-scope'
    Plug 'voldikss/vim-floaterm'
    Plug 'honza/vim-snippets'
    Plug 'easymotion/vim-easymotion'
    Plug 'haya14busa/is.vim'
    Plug 'tpope/vim-surround'
    Plug 'plasticboy/vim-markdown'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-rmarkdown'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'Konfekt/FastFold'
    Plug 'alok/notational-fzf-vim'
    Plug 'tpope/vim-eunuch'
    Plug 'itspriddle/vim-marked'
    Plug 'mbbill/undotree'
    Plug 'wellle/targets.vim' " better di, ci, etc for text objects
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-unimpaired'

call plug#end()
