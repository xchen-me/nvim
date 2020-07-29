" add manual folding on top of indent folding
" https://vim.fandom.com/wiki/Folding
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | setlocal nofoldenable | endif
augroup END

cd ~/Dropbox
