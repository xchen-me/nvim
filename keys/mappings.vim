" " Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" insert lines without entering insert mode
nmap <S-Enter> O<Esc>
nmap <D-Enter> o<Esc>
nmap <Enter> o<Esc>

nmap <leader>ww :e ~/Dropbox/mwiki/index.Rmd<CR>

" Use Cmd+Shift+ hjkl to resize windows
nnoremap <D-S-j>    :resize -2<CR>
nnoremap <D-S-k>    :resize +2<CR>
nnoremap <D-S-h>    :vertical resize -2<CR>
nnoremap <D-S-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

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
vnoremap < <gv
vnoremap > >gv

" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

" when using change command, don't put contents before change to register
nnoremap c "_c
nnoremap C "_C

" shift j and shift k to move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nmap <C-S-Up> [e
nmap <C-S-Down> ]e
vmap <C-S-Up> [egv
vmap <C-S-Down> ]egv

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
map ,<Space> :let @/=''<CR>

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" 'cd' towards the directory in which the current file is edited
" but only change the path for the current window
" nnoremap <leader>cd :lcd %:h<CR>
" change to the directory of the currently open file (this sets the current directory for all windows in Vim)
" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
nnoremap \cd :cd %:p:h<CR>:pwd<CR>
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
