nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
command Tags Telescope help_tags

" nnoremap <D-p> <cmd>cd %:p:h<CR>:pwd<CR><cmd>Telescope find_files<cr>
" inoremap <D-p> <Esc><cmd>cd %:p:h<CR>:pwd<CR><cmd>Telescope find_files<cr>
nnoremap <leader><leader> <cmd>Telescope find_files<CR>
nnoremap <D-p> <cmd>Telescope find_files<CR>
inoremap <D-p> <cmd>Telescope find_files<CR>
nnoremap <leader>. <cmd>cd %:p:h<CR>:pwd<CR>:Telescope find_files<CR>
nnoremap <leader>sf <cmd>Telescope find_files<CR>
command Files Telescope find_files

" nnoremap <leader>/ <cmd>Telescope grep_string<CR>
nnoremap <leader>/ <cmd>cd %:p:h<CR>:pwd<CR>:Telescope grep_string<CR>
nnoremap <leader>sd <cmd>cd %:p:h<CR>:pwd<CR>:Telescope live_grep<CR>

nnoremap <leader>sb <cmd>Telescope buffers<CR>
nnoremap <leader>< <cmd>Telescope buffers<CR>
command Buffers Telescope buffers

" nnoremap <leader>ss <cmd>Telescope current_buffer_fuzzy_find<CR>
nnoremap <D-f> <cmd>Telescope current_buffer_fuzzy_find<cr>

nnoremap <leader>sg <cmd>Telescope git_files<CR>
command GFiles Telescope git_files

nnoremap <leader>st <cmd>Telescope treesitter<CR>

" nnoremap <leader>st <cmd>Telescope current_buffer_tags<CR>
nnoremap <leader>sm <cmd>Telescope marks<CR>
command Marks Telescope marks

nnoremap <leader>fr <cmd>Telescope oldfiles<CR>
command History Telescope oldfiles

nnoremap <leader>hbb <cmd>Telescope keymaps<CR>
nnoremap <leader>sk <cmd>Telescope keymaps<CR>
command Map Telescope keymaps

nnoremap <leader>sl <cmd>Telescope loclist<CR>

nnoremap <leader>sc <cmd>Telescope git_commits<CR>

nnoremap <leader>sr <cmd>Telescope registers<CR>

" nnoremap <D-S-f> :Rg 
" inoremap <D-S-f> <Esc>:Rg 

nnoremap <D-S-p> <cmd>Telescope commands<CR>
inoremap <D-S-p> <Esc><cmd>Telescope commands<CR>
nnoremap <D-o> <cmd>Telescope commands<CR>
inoremap <D-o> <Esc><cmd>Telescope commands<CR>
" map alt x to commands
inoremap ≈ <Esc><cmd>Telescope commands<cr>
nnoremap ≈ <cmd>Telescope commands<cr>

nnoremap <leader>cr <cmd>Telescope command_history<CR>
command CommandHistory Telescope command_history


