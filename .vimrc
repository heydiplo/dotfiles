colorscheme Dark 

set termencoding=utf-8

set fileencodings=utf8,cp1251
set encoding=utf8

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

set nowrap

set foldlevelstart=5
set foldmethod=syntax

set number

set noignorecase

" let g:fuzzy_ignore = "gems/*"

map <C-t> :execute ':tabnew'<CR>
map <C-Tab> :execute ':tabn'<CR>
map <C-S-Tab> :execute ':tabp'<CR>
" map <C-W> :execute ':tabclose'<CR>
map <C-S> :execute ':w'<CR>
map <C-A> :execute 'NERDTreeToggle ' . getcwd()<CR>

nmap <A-Up> :wincmd k<CR>
nmap <A-Down> :wincmd j<CR>
nmap <A-Left> :wincmd h<CR>
nmap <A-Right> :wincmd l<CR>


" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p 
