"""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" Pathogen
""""""""""""""""""""""""""""""""""
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible

" History
""""""""""""""""""""""""""""""""""
set history=700
set undodir=~/.vim/undodir
set undofile
" maximum number of changes that can be undone
set undolevels=1000 
" maximum number lines to save for undo on a buffer reload
set undoreload=10000 

" перечитывать измененные файлы автоматически
set autoread

" перерисовывать буфер менее плавно
set lazyredraw

" Filetype plugin
""""""""""""""""""""""""""""""""""
" определять тип файла автоматически
filetype plugin on      
filetype indent on

" Reread .vimrc after changed
" автоматически перечитывать файл конфигурации VIM после его сохранения
autocmd! bufwritepost $MYVIMRC source $MYVIMRC 

" Map leader
""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

" Bash as default shell
set shell=bash\ --login

" Colors
""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme desert256

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" INTERFACE
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" показывать строку с позицией курсора
set ruler

" показывать номера строк
set number
set numberwidth=5

" показывать буфер вводимой комманды
set showcmd                 

" показывать совпадающие скобки для html-тегов
set matchpairs+=<:>         

" сделать строку комманд больше
set cmdheight=2             

" сделать окно комманд больше
set cmdwinheight=16         

" всегда показывать строку вкладок
set showtabline=2           

" показывать строку статуса всегда
set laststatus=2            

" формат строки статуса
set statusline=%1*%m%*%2*%r%*%3*%h%w%*%{expand(\"%:p:~\")}%<\%=Col:%3*%03c%*\ Ln:%3*%04l%*/%3*%04L%*\File:%(%3*%{&filetype}%*/%)%3*%{&fileformat}%*%(/%3*%{&fileencoding}%*%)

" показывать заголовок в окне терминала
set title                   

" формат заголовка
set titlestring=%t%(\ %m%)%(\ %r%)%(\ %h%)%(\ %w%)%(\ (%{expand(\"%:p:~:h\")})%)\ -\ VIM

" backspace в режиме вставки
set backspace=2

if !&diff
" подсвечивать синтаксис
    syntax enable           
endif


" сохранять файл при запуске консольных комманд
set autowrite               

" табуляция в 4 пробела
set tabstop=4               
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" удалять лишние пробелы при отступе
set shiftround              

" диалоги вместо сообщений об ошибках
set confirm                 
" использовать сокращенные диалоги
set shortmess=fimnrxoOtTI   

" поиск
set incsearch               
set hlsearch

" игнорировать регистр, если запрос в нижнем регистре
set ignorecase              
set smartcase

" Автодополнения
set infercase               

" кодировки
set termencoding=utf-8      
set fileencodings=utf8,cp1251
set encoding=utf8

" фикс для русских клавиш
                            
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё~

" разрешить переход на новую/предыдущую строку
                            
set whichwrap=b,s,h,l,<,>,~,[,]

" переключение режима отступов при вставке
set pastetoggle=<F12>       

" использовать wildmenu ...
set wildmenu                
" ... с авто-дополнением ...
set wildcharm=<TAB>         
" ... как в bash, затем перебором
                            
set wildmode=list:longest,full

" не переносить строки
set nowrap                  
set linebreak
set nowrapscan

set nobackup
set noswapfile

set foldlevelstart=10
set foldmethod=indent
hi Folded	cterm=none	ctermfg=244	ctermbg=232	gui=none	guifg=#eeeeee	guibg=#444444


" set autochdir

" горячие клавиши

" табы
    
" новая вкладка
        
nmap tn :tabnew<CR>
vmap tn <ESC>:tabnew<CR>

" следующая вкладка
        
nmap tl :execute ':tabnext'<CR>
vmap tl <Esc>:execute ':tabnext'<CR>

" предыдущая вкладка
        
nmap th :execute ':tabprevious'<CR>
vmap th <Esc>:execute ':tabprevious'<CR>

" закрыть вкладку
        
nmap td :execute ':tabclose'<CR>
vmap td <Esc>:execute ':tabclose'<CR>

" сохранить
    
nnoremap <F2> :execute ':w'<CR>
vnoremap <F2> <C-O>:execute ':w'<CR>
inoremap <F2> <Esc>:execute ':w'<CR>

nnoremap <F4> :TlistToggle<CR>

" убрать/показать дерево
    
nnoremap <F3> :execute 'NERDTreeToggle ' . getcwd()<CR>
inoremap <F3> <C-O>:execute 'NERDTreeToggle ' . getcwd()<CR>
vnoremap <F3> <Esc>:execute 'NERDTreeToggle ' . getcwd()<CR>

" переключение между окнами
    
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" закрытие html-тегов
    
imap <C-_> </<C-X><C-O>

" ускоренное передвижение по файлу
    
nmap <C-H> B
nmap <C-J> 5j
nmap <C-K> 5k
nmap <C-L> W
vmap <C-H> B
vmap <C-J> 5j
vmap <C-K> 5k
vmap <C-L> W

vmap <C-H> B
vmap <C-L> W

" Клавиши быстрого редактирования строки в режиме вставки
    
" и в режиме редактирования командной строки.
    
imap <C-H> <Left>
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-L> <Right>

cmap <C-H> <Left>
cmap <C-J> <Down>
cmap <C-K> <Up>
cmap <C-L> <Right>

" Скопировать в нижнюю строку кусок от начала текущей строки до курсора
    
nmap <C-L> v0"ly<Esc>o<Esc>"lpA

" Более привычные Page Up/Down, когда курсор остаётся в той же строке,
    
" а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
    
" Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
    
" привязка делается к двойному нажатию этих комбинаций.
    
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

nmap <c-b> zA
imap <c-b> <Esc>zAi

" does nothing
nmap <F1> jk
imap <F1> <Left><Right>
vmap <F1> jk

" выход из режима вставка по jj
    
imap jj <Esc>
imap оо <Esc>

map <C-n> :noh<cr>
map <C-e> :b#<cr>

map <C-f> :CommandT<CR>
map <S-d>f :CommandTFlush<CR>
"map to fuzzy finder text mate stylez
"nnoremap <c-f> :FuzzyFinderTextMate<CR>

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

set wildignore+=*.git,*.log,*.jpg,*.git,*.png,**/vendor/**,**/test/**,data

" --------------------
" TagList
" --------------------
" TagListTagName - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
" Displaying tags for only one file~
let Tlist_Show_One_File = 1 
" if you are the last, kill yourself
let Tlist_Exist_OnlyWindow = 1 
" split to the right side of the screen
let Tlist_Use_Right_Window = 1 
let Tlist_Sort_Type = "order"" sort by order or name
 
" Remove extra information and blank lines from the taglist window.
let Tlist_Compart_Format = 1 
" Jump to taglist window on open.
let Tlist_GainFocus_On_ToggleOpen = 1 
" Show tag scope next to the tag name.
let Tlist_Display_Tag_Scope = 1 
" Close the taglist window when a file or tag is selected.
let Tlist_Close_On_Select = 1 
" Don't Show the fold indicator column in the taglist window.
let Tlist_Enable_Fold_Column = 0 
let Tlist_WinWidth = 80

" ------------
" Rag Tag
" ------------
" let g:ragtag_global_maps = 1


" -------------
" NERDtree
" -------------

let NERDTreeChDirMode = 0


" ----------------
" javascript folding
" ----------------

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
