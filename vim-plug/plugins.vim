" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Plug 'honza/vim-snippets'
  Plug 'easymotion/vim-easymotion'
  Plug 'justinmk/vim-sneak'
  Plug 'haya14busa/is.vim'            " incremental search improved
  Plug 'tpope/vim-surround'
  Plug 'mbbill/undotree'
  Plug 'wellle/targets.vim'           " better di, ci, etc for text objects
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-repeat'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'tpope/vim-commentary'

  if !exists('g:vscode')
    " better coding
    " Plug 'deoplete-plugins/deoplete-jedi' " python 
    Plug 'sheerun/vim-polyglot'       " Better Syntax Support

    " color themes and startups
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vim-which-key'

    " better search 
    Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'alok/notational-fzf-vim'    " https://github.com/alok/notational-fzf-vim
    Plug 'airblade/vim-rooter'

    " better editing
    Plug 'jiangmiao/auto-pairs'       " Auto pairs for '(' '[' '{'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'          " fugitive.vim is the Git, rhubarb.vim is the Hub
    Plug 'junegunn/gv.vim'            " git commit browser
    Plug 'unblevable/quick-scope'
    Plug 'voldikss/vim-floaterm'
    Plug 'francoiscabrol/ranger.vim'

    " common file support
    Plug 'plasticboy/vim-markdown'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-rmarkdown'
    Plug 'lervag/vimtex'
    Plug 'axvr/org.vim'               " better syntax highlighting for org files

    " better compile
    Plug 'skywind3000/asyncrun.vim'
    Plug 'tpope/vim-eunuch'
    Plug 'itspriddle/vim-marked'
    Plug 'tpope/vim-speeddating'

    " vim for writters
    Plug 'junegunn/goyo.vim'          " distraction free writing
    Plug 'junegunn/limelight.vim'
    Plug 'reedes/vim-wordy'           " uncovering usage problems in writing
    Plug 'reedes/vim-pencil'          " bits of settings for better writing
    Plug 'reedes/vim-lexical'         " building on Vim’s spell-check and thesaurus/dictionary completion
    Plug 'kana/vim-textobj-user'      " better text object recognitions and motions 
    Plug 'reedes/vim-textobj-sentence'

    " ===============================================
    " ===Conflicting or no longer in my common use===
    " ===============================================
    "" press f/F/t/T instead of ; in f/F/t/T searches
    "" conflict with quick-scope
    " Plug 'scrooloose/NERDTree'        " File Explorer
    " Plug 'morhetz/gruvbox'
    " Plug 'rhysd/clever-f.vim'
    " Plug 'Konfekt/FastFold'
    " Plug 'vim-scripts/utl.vim'
    " Plug 'vimoutliner/vimoutliner'
    " Plug 'dhruvasagar/vim-dotoo'
endif
call plug#end()
