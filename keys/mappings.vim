" " Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" " insert lines without entering insert mode
" nmap <S-Enter> O<Esc>
" nmap <D-Enter> o<Esc>
" nmap <Enter> o<Esc>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

nnoremap Q q
nnoremap q :bd<CR>
" nnoremap q :q<CR>
" delete current buffer
" nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bd :Bclose<CR>

" Swap J with gJ. I mostly use gJ to join lines.
nnoremap J gJ
nnoremap gJ J
nnoremap j gj
" nnoremap k gk " already done in pencil

" paste the same text a second time
xnoremap <silent> p p:let @"=@0<CR>

" less stress on the right pinky fingure
nnoremap ; :

" go back to previous file in one hand instead of ctrl + 6
nnoremap <C-e> :e#<CR>

" nmap <leader>ww :e ~/Dropbox/mwiki/index.Rmd<CR>

" Use Cmd+Ctrl+ hjkl to resize windows
nnoremap <D-M-j>    :resize -2<CR>
nnoremap <D-M-k>    :resize +2<CR>
nnoremap <D-M-h>    :vertical resize -2<CR>
nnoremap <D-M-l>    :vertical resize +2<CR>

" Easier escape
inoremap jk <Esc>
" inoremap kj <Esc>
" do it in command line too
cnoremap jk <C-c>
" but not in visual mode: xnoremap jk will mess up j motion in visual mode

" TAB in general mode will move to text buffer
nnoremap <C-TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <C-S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
nnoremap <D-s> :w<CR>
nnoremap <D-t> :tabnew<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" nnoremap <leader>qq :q<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap < <gv
vnoremap > >gv

" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

" when using change command, don't put contents before change to register
noremap c "_c
noremap C "_C

" shift j and shift k to move selected lines up and down
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv
nmap <C-S-Up> [e
nmap <C-S-Down> ]e
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv
" Alt + j / k to move lines up and down 
nmap ∆ ]e
nmap ˚ [e
vmap ∆ ]egv
vmap ˚ [egv

" Move across wrapped lines like regular lines
"Go to the first non-blank character of a line
noremap 0 ^
"Just in case you need to go to the very beginning of a line
noremap ^ 0
nnoremap L $
nnoremap H 0
" more natural yank to the end
nnoremap Y y$

" Clear search highlights.
nmap <Space>, :let @/=''<CR>

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" a litter more smarter window navigation: c-h moves to the left window and
" splits the window if no left window exists.
" function! WinMove(key)
"     let t:curwin = winnr()
"     exec "wincmd ".a:key
"     if (t:curwin == winnr())
"         if (match(a:key,'[jk]'))
"             wincmd v
"         else
"             wincmd s
"         endif
"         exec "wincmd ".a:key
"     endif
" endfunction
" nnoremap <silent> <C-h> :call WinMove('h')<CR>
" nnoremap <silent> <C-j> :call WinMove('j')<CR>
" nnoremap <silent> <C-k> :call WinMove('k')<CR>
" nnoremap <silent> <C-l> :call WinMove('l')<CR>

" 'cd' towards the directory in which the current file is edited
" but only change the path for the current window
" nnoremap <leader>cd :lcd %:h<CR>
" change to the directory of the currently open file (this sets the current directory for all windows in Vim)
" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>
" command CDD cd %:p:h " Change to Directory of Current file
"https://vimways.org/2019/vim-and-the-working-directory/
" Open files located in the same dir in with the current file is edited
nnoremap \ew :e <C-R>=expand("%:.:h") . "/"<CR>

" press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file
" note it must be Leader instead of leader for correct binding of \rc
" nnoremap <Leader>r :%s///gc<Left><Left>
nnoremap <Leader>r :%s///gc<Left><Left><Left>
" mac comand+r to replace and confirm
nnoremap <D-r> :%s///gc<left><left><left>
" same as above but acting strictly on visual selection
xnoremap <Leader>r :s///gc<Left><Left><Left>
" mac comand+r to replace and confirm
xnoremap <D-r> :s///gc<Left><Left><Left>
" type a replacement term and press . to repeat the replacement again. useful
" for replacing a few instances of the term.
nnoremap <silent> c* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> c* "sy:let @/=@s<CR>cgn

" better Emacs-style command line navigation
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Delete>
" Meta b
cnoremap ∫ <S-Left>
" Meta f
cnoremap ƒ <S-Right>
" Meta d 
cnoremap ∂ <S-right><Delete>
cnoremap <D-g> <C-g>
" cnoremap <D-t> <C-t>

"" ----------------------------------------------------------------------------
" Markdown headings
" ----------------------------------------------------------------------------
nnoremap <leader>1 m`yypVr=``
" mark current location with `, go to front of the line, insert headings, go
" back to the original location 
nnoremap <leader>2 m`^i## <esc>``3l
" nnoremap <leader>2 m`yypVr-``
nnoremap <leader>3 m`^i### <esc>``4l
nnoremap <leader>4 m`^i#### <esc>``5l
nnoremap <leader>5 m`^i##### <esc>``6l

" Movement in insert mode
inoremap <C-b> <Left>
inoremap ∫ <S-Left>
inoremap <C-f> <Right>
inoremap <C-l> <Right>
inoremap ƒ <S-Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <D-left> <C-o>^
inoremap <D-right> <C-o>$
" inoremap <D-h> <C-o>^
inoremap <D-l> <C-o>$
inoremap <D-S-left> <C-o>v^
inoremap <D-S-right> <C-o>v$
inoremap <D-S-h> <C-o>v^
inoremap <D-S-l> <C-o>v$
inoremap <S-up> <C-o>h<C-o>vgk<C-o>l
inoremap <S-down> <C-o>vgj
inoremap <S-M-up> <C-o>h<C-o>vgk<C-o>l
inoremap <S-M-down> <C-o>vgj
inoremap <S-D-up> <C-o>h<C-o>vgk<C-o>l
inoremap <S-D-down> <C-o>vgj
inoremap <S-left> <C-o>h<C-o>v
inoremap <S-right> <C-o>vl
inoremap <M-left> <C-o>b
inoremap <M-right> <C-o>e
" alt h
inoremap ˙ <C-o>b
" alt l
inoremap ¬ <C-o>e
" option + shift + h/l to visual select word
inoremap Ó <C-o>h<C-o>vb
inoremap Ò <C-o>ve
inoremap <S-M-left> <C-o>h<C-o>vb
inoremap <S-M-right> <C-o>ve
" these are mapped in visual mode
vmap <S-left> h
vmap <S-right> l
vmap <S-Down> j
vmap <S-Up> k
vmap <S-M-Down> j
vmap <S-M-Up> k
vmap <S-D-down> j
vmap <S-D-up> k
vmap <S-D-j> j
vmap <S-D-k> k
vmap <S-M-right> e
vmap <S-M-left> b
vmap <S-D-right> $
vmap <S-D-left> ^
vmap <S-D-l> $
vmap <S-D-h> ^
vmap <S-l> $
vmap <S-h> ^
" option shift h/l
vmap Ó b
vmap Ò w

" Mapping <Shift>-Arrows to selecting characters/lines
" activate visual mode in normal mode
nmap <S-Up> vgk
nmap <S-Down> vgj
nmap <S-M-Up> vgk
nmap <S-M-Down> vgj
nmap <S-M-right> vl
nmap <S-M-left> vh

noremap <D-left> ^
noremap <D-right> $
noremap <D-h> ^
noremap <D-l> $
noremap <D-S-left> v^
noremap <D-S-right> v$
noremap <D-S-h> v^
noremap <D-S-l> v$
"
" switching between recent buffers in insert mode
" inoremap <C-l> <C-o>a
" inoremap <C-j> <C-o>j
" inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^>
inoremap <C-e> <C-o><C-^>

nnoremap <leader>` <C-^>
