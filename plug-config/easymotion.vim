" let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" let g:EasyMotion_move_highlight = 0
" let g:EasyMotion_landing_highlight = 0
" Move to line
nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)
map gl <Plug>(easymotion-bd-jk)
map <D-l> <Plug>(easymotion-bd-jk)
nmap gl <Plug>(easymotion-overwin-line)
map gw <Plug>(easymotion-w)
map gb <Plug>(easymotion-b)
nmap gw <Plug>(easymotion-w)
nmap gb <Plug>(easymotion-b)
" search phrases
map  g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)
" map <Tab> <Over>(em-scroll-f)
" EMCommandLineNoreMap <Space> <CR>
" EMCommandLineNoreMap <Tab>  <Over>(em-scroll-f)
" EMCommandLineNoreMap <S-Tab>  <Over>(em-scroll-b)
