let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1  " Turn on case-insensitive feature
" let g:EasyMotion_move_highlight = 0
" let g:EasyMotion_landing_highlight = 0

" Move to line
nmap gsl <Plug>(easymotion-bd-jk)
nmap gsj <Plug>(easymotion-sol-j)
nmap gsk <Plug>(easymotion-sol-k)
nmap gsL <Plug>(easymotion-overwin-line)
nmap gsw <Plug>(easymotion-w)
nmap gsb <Plug>(easymotion-b)

" search phrases
nmap gs<space> <Plug>(easymotion-sn)
omap gs<space> <Plug>(easymotion-tn)
" nmap gs/ <Plug>(easymotion-sn)
" omap gs/ <Plug>(easymotion-tn)

" map <Tab> <Over>(em-scroll-f)
" EMCommandLineNoreMap <Space> <CR>
" EMCommandLineNoreMap <Tab>  <Over>(em-scroll-f)
" EMCommandLineNoreMap <S-Tab>  <Over>(em-scroll-b)
