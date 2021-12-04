:set number
:set autoindent
:set tabstop=4
:set smarttab
:set softtabstop=4
:set nohlsearch
:set cursorline
:set guitablabel=%t

" ====================
" SETTINGS
" ====================
" FZF
let g:fzf_action = {
		\ 'ctrl-t': 'tab split',
		\ 'ctrl-s': 'split',
		\ 'ctrl-x': 'vsplit'
		\}

let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.4, 'relative': v:true, 'yoffset': 0 }}
let g:fzf_preview_window = ['right:30%:hidden', 'ctrl-/']

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='tomorrow'

" ====================
" MAPPINGS
" ====================
let mapleader = ','

" FZF Mapping
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

" Tab Mapping
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tt :tabedit<cR>
nnoremap td :tabclose<CR>
nnoremap tn :tabnew<CR>
nnoremap to :tabonly<CR>
nnoremap ts :tab split<CR>

" Comments
noremap <silent> <Leader>cc :TComment<CR>

call plug#begin()

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
"
" ====================
" THEMES
" ====================
colorscheme base16-tomorrow-night

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
