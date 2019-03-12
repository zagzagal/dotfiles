call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-go', { 'do': 'make'}
endif

call plug#end()

" ----------------------------------------
"  General Settings
"  ---------------------------------------

colorscheme elflord

"-----------------------------------------
" Fish Settings
"-----------------------------------------
au FileType fish set expandtab
au FileType fish set shiftwidth=2
au FileType fish set softtabstop=2
au FileType fish set tabstop=2

"-----------------------------------------
" Go Settings
"-----------------------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

if has ('nvim')
	" enable deoplete on startup
	let g:deoplete#enable_at_startup = 1
endif

"----------------------------------------------
" Plugin: vim-airline/vim-airline
"----------------------------------------------
" Show status bar by default.
set laststatus=2

" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 0

" Enable powerline fonts.
let g:airline_powerline_fonts = 1

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.maxlinenr = ''
