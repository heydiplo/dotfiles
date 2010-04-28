colorscheme desert
set guifont=Consolas:h10:cRUSSIAN

set termencoding=utf-8

set fileencodings=utf8,cp1251
" set encoding=utf8


set completeopt=menu

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
syntax on

set linebreak

set hlsearch
set incsearch
set nowrapscan

set nobackup
set noswapfile

set guioptions-=m

set guioptions-=T

set nowrap

set foldlevelstart=5
set foldmethod=syntax

set number

set noignorecase

let g:fuzzy_ignore = "gems/*"

map <C-t> :execute ':tabnew'<CR>
map <C-Tab> :execute ':tabn'<CR>
map <C-S-Tab> :execute ':tabp'<CR>
map <C-W> :execute ':tabclose'<CR>
map <C-S> :execute ':w'<CR>
map <C-A> :execute 'NERDTreeToggle ' . getcwd()<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


cd d:\shared\projects
autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p 
