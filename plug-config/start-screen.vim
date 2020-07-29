let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_custom_header =["X-VIM Startup"]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 0
let g:startify_enable_special = 0
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Most recently used files']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'dir',       'header': ['   Most recently used filed in the current directory '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]
let g:startify_bookmarks = [
      \{'s': '~/Dropbox/Apps/Vim\ nvim/myspacevim.vim'}, 
      \{'c': '~/Dropbox/+++++/mCV'},
      \{'v': '~/Dropbox/Apps/Vim\ nvim'},
      \{'w': '~/Dropbox/mwiki'},
      \{'z': '~/.zshrc'},
      \{'n': '~/Dropbox/myNotes'} ]
