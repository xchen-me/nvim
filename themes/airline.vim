" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#wordcount#enabled = 1	"Show word count
let g:airline#extensions#wordcount#filetypes =
    \ ['asciidoc', 'help', 'mail', 'markdown', 'rmarkdown', 'org', 'plaintex', 'rst', 'tex', 'text']

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

if has("gui_running")
  if has("gui_macvim")
    " MacVim
    set guifont=FiraMonoForPowerline-Regular:h16
    " set guifont=FiraMonoForPowerline:h16
    " set guifont=SourceCodeProMediumForPowerline:h16
  endif
endif

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
