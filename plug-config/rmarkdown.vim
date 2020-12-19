" recognize rmd file
autocmd BufNewFile,BufRead *.rmd set filetype=rmarkdown
autocmd BufNewFile,BufRead *.Rmd set filetype=rmarkdown
autocmd BufNewFile,BufRead *.rmd set syntax=rmarkdown
autocmd BufNewFile,BufRead *.Rmd set syntax=rmarkdown
" autocmd BufNewFile,BufRead *.md set filetype=rmarkdown
" autocmd BufNewFile,BufRead *.md set syntax=rmarkdown
" initial no fold
autocmd Filetype rmd,rmarkdown,Rmd,markdown set nofoldenable
"
" compile using default output argument in YAML and open in pdf
" useful for rjournal: writting journals in R
" autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>ll :w<CR>:AsyncRun -post=!zathura\ "%:r".pdf Rscript -e 'rmarkdown::render("%")'<CR>
autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>ll :w<CR>:AsyncRun -post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'rmarkdown::render("%")'<CR>
autocmd Filetype rmd,rmarkdown,Rmd nmap ˜e :w<CR>:AsyncRun -post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'rmarkdown::render("%")'<CR>
"
" press <leader>lv to compile to pdf and open in Skim
autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>lv :w<CR>:AsyncRun -post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'rmarkdown::render("%", "pdf_document")'<CR>
"
" autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>ll :w<CR>:RMarkdown! pdf<CR>
" compile using default output type in YAML
autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>lr :w<CR>:AsyncRun Rscript -e 'rmarkdown::render("%")'<CR>
"
" autocmd Filetype rmd,rmarkdown,Rmd map <space>lb :w<CR>:RMarkdown! beamer<CR>
autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>lb :w<CR>:AsyncRun -post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'rmarkdown::render("%", "beamer_presentation")'<CR>
"
" run any RMarkdown command
" autocmd Filetype rmd,rmarkdown,Rmd map <space>lr :w<CR>:RMarkdownu
" run any Rscript
autocmd Filetype rmd,rmarkdown,Rmd nmap <leader>lc :w<CR>:AsyncRun Rscript -e 'library(rmarkdown);render("%","")'<left><left><left>

autocmd FileType rmd,rmarkdown,Rmd setlocal commentstring=<!--\ %s\ -->
