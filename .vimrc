let mapleader = ","

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Enable syntax coloring
syntax enable
set background=light
colorscheme solarized


" Map NERDTree to \p
nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Change some Zen Coding mappings
nmap <C-A> :call zencoding#expandAbbr(2)
imap <C-A> <C-G>u<ESC>:call zencoding#expandAbbr(0)<CR>a


" Filetype
set filetype=on
filetype plugin on
filetype indent on

" Default Tab settings
set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=79

" Enable line numbering
set number

" Disable older versions
set nocompatible

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" Python (tab width 4 chr, wrap at 79th char)
autocmd FileType php set sw=4
autocmd FileType php set ts=4
autocmd FileType php set sts=4
autocmd FileType php set textwidth=79

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=79

" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set textwidth=79

" Enable OmniCompletion
autocmd FileType php set omnifunc=phpcomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
