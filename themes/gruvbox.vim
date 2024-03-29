let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_invert_selection='0'

hi Comment cterm=italic

syntax on
colorscheme gruvbox
set background=dark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
