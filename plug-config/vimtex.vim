" let maplocalleader = "\<shift>"
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
" let g:vimtex_view_method='zathura'
let g:vimtex_indent_enabled=1
" let g:vimtex_toc_enabled=1
let g:vimtex_quickfix_mode=1
let g:vimtex_fold_enabled=1
let g:vimtex_fold_manual=0
let g:vimtex_log_ignore = ['Underfull', 'Overfull']
" let g:vimtex_compiler_progname = '~/Library/Python/3.7/bin/nvr'
" let g:vimtex_compiler_progname = '~/Library/Python/3.7/bin/nvr'
autocmd Filetype tex,latex set nofoldenable
autocmd Filetype tex,latex nmap <C-c><C-c> :VimtexCompile<CR>
" nnoremap <localleader>lt :call vimtex#fzf#run()<cr>
" let g:vimtex_fold_levelmarker = '➜'
let g:tex_conceal='abdmg'
" let g:tex_conceal =''
highlight Conceal ctermbg=none
set fillchars=fold:\
" let g:vimtex_fold_types= { 'env_options' : {'enabled':1},
" \}
" trying in vain to use xelatex by default

" let g:vimtex_compiler_latexmk_engines = {
"       \ '_'                : '-xelatex',
"       \ 'pdflatex'         : '-pdf',
"       \ 'dvipdfex'         : '-pdfdvi',
"       \ 'lualatex'         : '-lualatex',
"       \ 'xelatex'          : '-xelatex',
"       \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
"       \ 'context (luatex)' : '-pdf -pdflatex=context',
"       \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
"       \}
