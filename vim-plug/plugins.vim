" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Plug 'honza/vim-snippets'
  Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'

  if exists('g:vscode')
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else
    Plug 'wellle/targets.vim'           " better di, ci, etc for text objects
    Plug 'haya14busa/is.vim'            " incremental search improved
    Plug 'mbbill/undotree'              " get to any word on a line in 2 or 3 keystrokes
    " better coding
    " Plug 'deoplete-plugins/deoplete-jedi' " python 
    " Plug 'lambdalisue/jupyter-vim-binding'
    Plug 'easymotion/vim-easymotion'

    Plug 'tpope/vim-commentary'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'HustLion/q-quit'

    " color themes and startups
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'joshdick/onedark.vim'
    if has('nvim')
      Plug 'christianchiarulli/nvcode-color-schemes.vim'
      " Better tabline
      Plug 'romgrk/barbar.nvim'
      " Status Line
      Plug 'glepnir/galaxyline.nvim'
      Plug 'kyazdani42/nvim-web-devicons' " lua
      Plug 'ryanoasis/vim-devicons' " vimscript
    else
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
    endif
    if !has('gui_running')
      " Plug 'godlygeek/csapprox' "Make gvim-only colorschemes work transparently in terminal vim
    endif
    " Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vim-which-key'

    " lsp and autocomplete
    if has('nvim')
      Plug 'neovim/nvim-lspconfig'
      Plug 'hrsh7th/nvim-compe'
      Plug 'glepnir/lspsaga.nvim'
      " Plug 'onsails/lspkind-nvim'
    else
      " Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    endif
    " better search
    if has('nvim')
      " telescope
      Plug 'nvim-lua/popup.nvim'
      Plug 'nvim-lua/plenary.nvim'
      Plug 'nvim-telescope/telescope.nvim'
      " Plug 'nvim-telescope/telescope-media-files.nvim' "works for linux
      Plug 'kyazdani42/nvim-tree.lua'


      " syntax highlighting; need to TSInstall {language} afterwards, e.g.,
      " TSInstall {python, julia, html, lua}
      " Plug 'nvim-treesitter/nvim-treesitter'
      Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    else
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
      Plug 'junegunn/fzf.vim'
      Plug 'alok/notational-fzf-vim'    " https://github.com/alok/notational-fzf-vim

      " Better Syntax Support
      Plug 'sheerun/vim-polyglot'
    endif
    Plug 'airblade/vim-rooter'
    Plug 'chrisbra/csv.vim'

    " better editing
    Plug 'jiangmiao/auto-pairs'       " Auto pairs for '(' '[' '{'
    Plug 'psliwka/vim-smoothie'       " Smooth scroll
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'          " fugitive.vim is the Git, rhubarb.vim is the Hub
    Plug 'junegunn/gv.vim'            " git commit browser
    Plug 'voldikss/vim-floaterm'
    Plug 'francoiscabrol/ranger.vim'
    Plug 'moll/vim-bbye'              " Intuitive buffer closing

    " common file and language support
    Plug 'plasticboy/vim-markdown'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-rmarkdown'
    " Plug 'axvr/org.vim'               " better syntax highlighting for org files
    Plug 'nvim-orgmode/orgmode'
    Plug 'JuliaEditorSupport/julia-vim'

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
    " Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
endif
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

