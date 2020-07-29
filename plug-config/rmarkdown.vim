" recognize rmd file
autocmd BufNewFile,BufRead *.rmd set filetype=rmarkdown
autocmd BufNewFile,BufRead *.Rmd set filetype=rmarkdown
autocmd BufNewFile,BufRead *.rmd set syntax=rmarkdown
autocmd BufNewFile,BufRead *.Rmd set syntax=rmarkdown
autocmd BufNewFile,BufRead *.md set filetype=rmarkdown
autocmd BufNewFile,BufRead *.md set syntax=rmarkdown
" initial no fold
autocmd Filetype rmd,rmarkdown,Rmd,markdown set nofoldenable
" autocmd Filetype rmd,rmarkdown,Rmd map <space>ll :w<CR>:AsyncRun -post=!open\ . Rscript -e 'library(rmarkdown);render("%", "pdf_document")'<CR>
" press <leader>lv to compile to pdf and open in Skim
autocmd Filetype rmd,rmarkdown,Rmd map <space>lv :w<CR>:AsyncRun -post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'library(rmarkdown);render("%", "pdf_document")'<CR>
autocmd Filetype rmd,rmarkdown,Rmd map <space>ll :w<CR>:RMarkdown! pdf<CR>
" autocmd Filetype rmd,rmarkdown,Rmd map <space>lb :w<CR>:RMarkdown! beamer<CR>
autocm Filetype rmd,rmarkdown,Rmd map <space>lb :w<CR>:AsyncRun -post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'library(rmarkdown);render("%", "beamer_presentation")'<CR>
" run any RMarkdown command
" autocmd Filetype rmd,rmarkdown,Rmd map <space>lr :w<CR>:RMarkdownu
" run RMarkdown with default output: useful for only one output file 
autocmd Filetype rmd,rmarkdown,Rmd map <space>lr :w<CR>:AsyncRun Rscript -e 'library(rmarkdown);render("%","")'<left><left><left>
" run any Rscript
autocmd Filetype rmd,rmarkdown,Rmd map <space>lc :w<CR>:AsyncRun post=!open\ -a\ Skim.app\ "%:r".pdf Rscript -e 'library(rmarkdown);render("%", "")'<left><left><left>
