" fold yaml section 
let g:pandoc#folding#fold_yaml=1
let g:vim_markdown_toml_frontmatter = 1
let g:pandoc#command#prefer_pdf=1
let g:pandoc#filetypes#pandoc_markdown = 0 " used when wimwiki is installed
" let g:pandoc#filetypes#pandoc_markdown = 1 
let g:pandoc#hypertext#autosave_on_edit_open_link=1
let g:pandoc#biblio#bibs = ["/Users/xuchen/Dropbox/xchen_bibtex_files/bibtex_xuchen.bib"]
" install bibtool first: brew install bib-tool
let g:pandoc#biblio#use_bibtool = 1
let g:pandoc#folding#mode='syntax'
" let g:pandoc#folding#mode='stacked'
autocmd Filetype pandoc,help set nofoldenable
