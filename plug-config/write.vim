augroup pencil
  autocmd!
  " hard wrap is common for coders; soft wrap for writers
  " pencil's hard wrap turns on autoformat -- a feature that will destroy yaml
  " headings
  autocmd FileType rmarkdown,markdown,tex,text call pencil#init({'wrap': 'soft', 'autoformat': 0})
        \ | call lexical#init()
        \ | call textobj#sentence#init()
  let g:lexical#spelllang = ['en_us','en_ca',]
augroup END
