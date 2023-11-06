" X-VIM: main file
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/vim-sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim

if !exists('g:vscode')
  source $HOME/.config/nvim/plug-config/vim-fugitive.vim
  source $HOME/.config/nvim/themes/onedark.vim

  if has('nvim')
    source ~/.config/nvim/general/theme.vim
    source ~/.config/nvim/plug-config/telescope.vim
    luafile ~/.config/nvim/lua/plugins/plug-telescope.lua
    " luafile ~/.config/nvim/lua/plugins/telescope-config.lua
    source ~/.config/nvim/plug-config/treesitter.vim
    luafile ~/.config/nvim/lua/plugins/plug-treesitter.lua
    luafile ~/.config/nvim/lua/plugins/plug-orgmode.lua
    luafile ~/.config/nvim/lua/plugins/galaxyline-config.lua
    " source ~/.config/nvim/plug-config/barbar.vim "tabline
    " luafile ~/.config/nvim/lua/plugins/nvimtree-config.lua
    " source ~/.config/nvim/plug-config/nvimtree-config.vim
  else
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/themes/airline.vim
  endif

  if has('nvim')
    luafile ~/.config/nvim/lua/plugins/mason.lua
    luafile ~/.config/nvim/lua/plugins/plug-orgmode.lua
    luafile ~/.config/nvim/lua/built-in-lsp.lua
    luafile ~/.config/nvim/lua/plugins/lsp-saga.lua
    source ~/.config/nvim/plug-config/lsp-config.vim
    " if 0
    "   source ~/.config/nvim/plug-config/completion-nvim.vim
    " else
    source ~/.config/nvim/lua/lsp-wrapper.vim
    " luafile ~/.config/nvim/lua/lsp/general-ls.lua
    luafile ~/.config/nvim/lua/plugins/compe-config.lua
    " luafile ~/.config/nvim/lua/lsp/lua-ls.lua
    luafile ~/.config/nvim/lua/lsp/python-ls.lua
    " luafile ~/.config/nvim/lua/lsp/lsp-kind.lua
    luafile ~/.config/nvim/lua/lsp/bash-ls.lua
    luafile ~/.config/nvim/lua/lsp/vim-ls.lua
    " end
  else
    " source $HOME/.config/nvim/plug-config/coc.vim
  endif

  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/nvALT-vim.vim
  source $HOME/.config/nvim/plug-config/ranger.vim
  source $HOME/.config/nvim/plug-config/write.vim
  source $HOME/.config/nvim/plug-config/limelight.vim
  source $HOME/.config/nvim/plug-config/signify.vim
  source $HOME/.config/nvim/plug-config/csv.vim
  source $HOME/.config/nvim/plug-config/vimtex.vim
  source $HOME/.config/nvim/plug-config/markdown.vim
  source $HOME/.config/nvim/plug-config/pandoc.vim
  source $HOME/.config/nvim/plug-config/rmarkdown.vim
  source $HOME/.config/nvim/plug-config/rainbow_parentheses.vim
  " source $HOME/.config/nvim/plug-config/vim-snippets.vim
  " source $HOME/.config/nvim/general/after.vim
  " luafile $HOME/.config/nvim/lua/plugins/plug-colorizer.lua
  " source $HOME/.config/nvim/general/choose.vim
else
  source $HOME/.config/nvim/vscode/vscode.vim
  source $HOME/.config/nvim/plug-config/highlightyank.vim
endif
