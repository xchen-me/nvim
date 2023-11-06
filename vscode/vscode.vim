"VSCode
function! s:split(...) abort
    let direction = a:1
    let file = a:2
    call VSCodeCall(direction == 'h' ? 'workbench.action.splitEditorDown' : 'workbench.action.splitEditorRight')
    if file != ''
        call VSCodeExtensionNotify('open-file', expand(file), 'all')
    endif
endfunction

function! s:splitNew(...)
    let file = a:2
    call s:split(a:1, file == '' ? '__vscode_new__' : file)
endfunction

function! s:closeOtherEditors()
    call VSCodeNotify('workbench.action.closeEditorsInOtherGroups')
    call VSCodeNotify('workbench.action.closeOtherEditors')
endfunction

" function! s:manageEditorSize(...)
"     let count = a:1
"     let to = a:2
"     for i in range(1, count ? count : 1)
"         call VSCodeNotify(to == 'increase' ? 'workbench.action.increaseViewSize' : 'workbench.action.decreaseViewSize')
"     endfor
" endfunction

function! s:vscodeCommentary(...) abort
    if !a:0
        let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
        return 'g@'
    elseif a:0 > 1
        let [line1, line2] = [a:1, a:2]
    else
        let [line1, line2] = [line("'["), line("']")]
    endif

    call VSCodeCallRange("editor.action.commentLine", line1, line2, 0)
endfunction

" function! s:openVSCodeCommandsInVisualMode()
"     normal! gv
"     let visualmode = visualmode()
"     if visualmode == "V"
"         let startLine = line("v")
"         let endLine = line(".")
"         call VSCodeNotifyRange("workbench.action.showCommands", startLine, endLine, 1)
"     else
"         let startPos = getpos("v")
"         let endPos = getpos(".")
"         call VSCodeNotifyRangePos("workbench.action.showCommands", startPos[1], endPos[1], startPos[2], endPos[2], 1)
"     endif
" endfunction

" function! s:openWhichKeyInVisualMode()
"     normal! gv
"     let visualmode = visualmode()
"     if visualmode == "V"
"         let startLine = line("v")
"         let endLine = line(".")
"         call VSCodeNotifyRange("whichkey.show", startLine, endLine, 1)
"     else
"         let startPos = getpos("v")
"         let endPos = getpos(".")
"         call VSCodeNotifyRangePos("whichkey.show", startPos[1], endPos[1], startPos[2], endPos[2], 1)
"     endif
" endfunction

" I and A have issues currently in the setup. Have to manually map them.
nnoremap <silent> I :call VSCodeNotify('cursorHome')<CR>i
nnoremap <silent> A :call VSCodeNotify('cursorEnd')<CR>a

command! -complete=file -nargs=? Split call <SID>split('h', <q-args>)
command! -complete=file -nargs=? Vsplit call <SID>split('v', <q-args>)
command! -complete=file -nargs=? New call <SID>split('h', '__vscode_new__')
command! -complete=file -nargs=? Vnew call <SID>split('v', '__vscode_new__')
command! -bang Only if <q-bang> == '!' | call <SID>closeOtherEditors() | else | call VSCodeNotify('workbench.action.joinAllGroups') | endif

" Better Navigation
nnoremap <silent> <C-w>j :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-w>j :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-w>k :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-w>k :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-w>h :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-w>h :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-w>l :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-w>l :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap <silent> <C-w>d :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <silent> <C-w>d :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <C-w>O :call VSCodeNotify('workbench.action.maximizeEditor')<CR>
xnoremap <silent> <C-w>O :call VSCodeNotify('workbench.action.maximizeEditor')<CR>
nnoremap <silent> <C-w>o :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>
xnoremap <silent> <C-w>o :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>
nnoremap <silent> <C-w>= :call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
xnoremap <silent> <C-w>= :call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
nnoremap <silent> <C-w>v :call VSCodeNotify('workbench.action.splitEditor')<CR>
xnoremap <silent> <C-w>v :call VSCodeNotify('workbench.action.splitEditor')<CR>
nnoremap <silent> <C-w>s :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
xnoremap <silent> <C-w>s :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <silent> <C-w>w :call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
xnoremap <silent> <C-w>w :call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
nnoremap <silent> <C-w>mm :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>
xnoremap <silent> <C-w>mm :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>

nnoremap <silent> <leader>wj :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <leader>wj :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <leader>wk :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <leader>wk :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <leader>wh :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <leader>wh :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <leader>wl :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <leader>wl :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap <silent> <leader>wd :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
xnoremap <silent> <leader>wd :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <leader>wO :call VSCodeNotify('workbench.action.maximizeEditor')<CR>
xnoremap <silent> <leader>wO :call VSCodeNotify('workbench.action.maximizeEditor')<CR>
nnoremap <silent> <leader>wo :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>
xnoremap <silent> <leader>wo :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>
nnoremap <silent> <leader>w= :call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
xnoremap <silent> <leader>w= :call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
nnoremap <silent> <leader>wv :call VSCodeNotify('workbench.action.splitEditor')<CR>
xnoremap <silent> <leader>wv :call VSCodeNotify('workbench.action.splitEditor')<CR>
nnoremap <silent> <leader>ws :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
xnoremap <silent> <leader>ws :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <silent> <leader>ww :call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
xnoremap <silent> <leader>ww :call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
" nnoremap <silent> <C-x>o :call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
" xnoremap <silent> <C-x>o :call VSCodeNotify('workbench.action.focusPreviousGroup')<CR>
nnoremap <silent> <leader>wmm :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>
xnoremap <silent> <leader>wmm :call VSCodeNotify('workbench.action.minimizeOtherEditors')<CR>

nnoremap <silent> <C-w><C-j> :call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
xnoremap <silent> <C-w><C-j> :call VSCodeNotify('workbench.action.moveActiveEditorGroupDown')<CR>
nnoremap <silent> <C-w><C-k> :call VSCodeNotify('workbench.action.moveActiveEditorGroupUp')<CR>
xnoremap <silent> <C-w><C-k> :call VSCodeNotify('workbench.action.moveActiveEditorGroupUp')<CR>
nnoremap <silent> <C-w><C-h> :call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
xnoremap <silent> <C-w><C-h> :call VSCodeNotify('workbench.action.moveActiveEditorGroupLeft')<CR>
nnoremap <silent> <C-w><C-l> :call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>
xnoremap <silent> <C-w><C-l> :call VSCodeNotify('workbench.action.moveActiveEditorGroupRight')<CR>

nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>

" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
xnoremap <expr> <C-/> <SID>vscodeCommentary()
nnoremap <expr> <C-/> <SID>vscodeCommentary() . '_'

nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

" nnoremap <silent> <C-c><Space> :call VSCodeNotify('whichkey.show')<CR>
" xnoremap <silent> <C-c><Space> :<C-u>call <SID>openWhichKeyInVisualMode()<CR>

" xnoremap <silent> <C-P> :<C-u>call <SID>openVSCodeCommandsInVisualMode()<CR>

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

nnoremap <silent> zc :call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> zM :call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zm :call VSCodeNotify('editor.foldRecursively')<CR>
nnoremap <silent> zo :call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> zR :call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap <silent> zr :call VSCodeNotify('editor.unfoldRecursively')<CR>

  " buffer/window deletion
nnoremap <silent> <leader>bb :call VSCodeNotify('workbench.action.showAllEditors')<CR>
nnoremap <silent> <leader>bd :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <leader>bk :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <leader>bO :call VSCodeNotify('workbench.action.closeOtherEditors')<CR>
nnoremap <silent> <leader>bn :call VSCodeNotify('workbench.action.nextEditor')<CR>
nnoremap <silent> <leader>bp :call VSCodeNotify('workbench.action.previousEditor')<CR>
nnoremap <silent> <leader>b] :call VSCodeNotify('workbench.action.nextEditor')<CR>
nnoremap <silent> <leader>b[ :call VSCodeNotify('workbench.action.previousEditor')<CR>
nnoremap <silent> <leader>bN :call VSCodeNotify('workbench.action.newUntitledFile')<CR>
nnoremap <silent> <leader>bu :call VSCodeNotify('workbench.action.reopenClosedEditor')<CR>

" nnoremap <silent> <leader>e :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <leader>e :call VSCodeNotify('workbench.files.action.showActiveFileInExplorer')<CR>
nnoremap <silent> gf :call VSCodeNotify('seito-openfile.openFileFromText')<CR>
nnoremap <silent> <leader>gf :call VSCodeNotify('editor.action.revealDefinitionAside')<CR>

nnoremap <silent> <leader>ff :call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <leader>fd :call VSCodeNotify('file-browser.open')<CR>
nnoremap <silent> <leader>fr :call VSCodeNotify('workbench.action.openRecent')<CR>

nnoremap <silent> <leader>gg :call VSCodeNotify('magit.status')<CR>

nnoremap <silent> <leader>mc :call VSCodeNotify('bookmarks.clear')<CR>
nnoremap <silent> <leader>mj :call VSCodeNotify('bookmarks.jumpToNext')<CR>
nnoremap <silent> <leader>mk :call VSCodeNotify('bookmarks.jumpToPrevious')<CR>
nnoremap <silent> <leader>ml :call VSCodeNotify('bookmarks.listFromAllFiles')<CR>
nnoremap <silent> <leader>mr :call VSCodeNotify('bookmarks.refresh')<CR>
nnoremap <silent> <leader>mt :call VSCodeNotify('bookmarks.toggle')<CR>
nnoremap <silent> <leader>ms :call VSCodeNotify('workbench.view.extension.bookmarks')<CR>

nnoremap <silent> <leader>od :call VSCodeNotify('file-browser.open')<CR>
nnoremap <silent> <leader>or :call VSCodeNotify('workbench.action.openRecent')<CR>
nnoremap <silent> <leader>ot :call VSCodeNotify('workbench.action.togglePanel')<CR>
nnoremap <silent> <leader>oT :call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>

nnoremap <silent> <leader>sd :call VSCodeNotify('file-browser.open')<CR>
nnoremap <silent> <leader>sb :call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <silent> <leader>sf :call VSCodeNotify('workbench.action.quickOpen')<CR>
" nnoremap <silent> <leader>st :call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <silent> <leader>sp :call VSCodeNotify('workbench.action.replaceInFiles')<CR>
nnoremap <silent> <leader>sm :call VSCodeNotify('bookmarks.listFromAllFiles')<CR>

nnoremap <silent> <leader>tt :call VSCodeNotify('workbench.action.togglePanel')<CR>
nnoremap <silent> <leader>tT :call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
nnoremap <silent> <leader>tz :call VSCodeNotify('workbench.action.toggleZenMode')<CR>

nnoremap <silent> <leader>yd :call VSCodeNotify('extension.downloadSettings')<CR>
nnoremap <silent> <leader>yu :call VSCodeNotify('extension.updateSettings')<CR>


