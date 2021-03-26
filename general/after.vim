" add manual folding on top of indent folding
" https://vim.fandom.com/wiki/Folding
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | setlocal nofoldenable | endif
augroup END

autocmd Filetype rmarkdown,tex,org,text nmap <leader>mv :!open -a Skim.app "%:r".pdf<CR>

" vmap <silent> <Tab>	<Plug>(is-scroll-f)
" vmap <silent> <S-Tab> <Plug>(is-scroll-b)

" vmap <wildcharm>	<C-g>
" vmap <S-wildcharm> <C-t>

" cd ~/Dropbox
