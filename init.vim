" X-VIM

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/vim-sneak.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
if !exists('g:vscode')
  source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/plug-config/vim-fugitive.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
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
  source $HOME/.config/nvim/general/after.vim
  " lua require'plug-colorizer'
else
  source $HOME/.config/nvim/vscode/vscode.vim
  source $HOME/.config/nvim/plug-config/highlightyank.vim
endif
