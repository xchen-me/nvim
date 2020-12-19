" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
if !isdirectory($HOME."/.local")
  call mkdir($HOME."/.local", "", 0770)
endif
if !isdirectory($HOME."/.local/share")
  call mkdir($HOME."/.local/share", "", 0700)
endif
if !isdirectory($HOME."/.local/share/fzf-history")
  call mkdir($HOME."/.local/share/fzf-history", "", 0700)
endif
let g:fzf_history_dir = '~/.local/share/fzf-history'

" nmap <C-f> :Files<CR>
" cd %:p:h<CR>:pwd<CR>
nnoremap <D-p> :cd %:p:h<CR>:pwd<CR>:Files<CR>
inoremap <D-p> <Esc>:cd %:p:h<CR>:pwd<CR>:Files<CR>
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>. :cd %:p:h<CR>:pwd<CR>:Files<CR>
nnoremap <leader>/ :Rg 
nnoremap <leader>sd :cd %:p:h<CR>:pwd<CR>:Rg 
nnoremap <leader>sb :BLines<CR>
nnoremap <leader>ss :BLines<CR>
nnoremap <leader>< :Buffers<CR>
nnoremap <leader>sg :GFiles<CR>
nnoremap <leader>st :Tags<CR>
nnoremap <leader>sm :Marks<CR>
nnoremap <leader>sp :Rg 
nnoremap <leader>fr :History<CR>
nnoremap <leader>hbb :Map<CR>

" Search spotlight {{{2
command! -nargs=1 FzfSpotlight call fzf#run(fzf#wrap({
            \ 'source'  : 'mdfind -onlyin ~ <q-args>',
            \ 'options' : '-m --prompt "Spotlight> "'
            \ }))
" nnoremap <leader>sf :FzfSpotlight <C-R><C-W>
nnoremap <leader>sf :FzfSpotlight 

nnoremap <D-S-p> :Commands<CR>
inoremap <D-S-p> <Esc>:Commands<CR>
nnoremap <D-o> :Commands<CR>
inoremap <D-o> <Esc>:Commands<CR>
" nnoremap <C-S-p> :Commands<CR>

nnoremap <D-f> :CocSearch 
inoremap <D-f> <Esc>:CocSearch 
" nnoremap <C-f> :CocSearch 
nnoremap <D-S-f> :Rg 
inoremap <D-S-f> <Esc>:Rg 
" sublime text / vs code like command palette

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
" Border color
" nice floating fzf window
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
