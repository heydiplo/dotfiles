set nocompatible            " Несовместимо с vi

set history=128             " больше комманд в истории
set undolevels=512          " и undo

set lazyredraw              " перерисовывать буфер менее плавно
set autoread                " перечитывать измененные файлы автоматически

set t_Co=256                " Больше цветов

set backspace=2             " backspace в режиме вставки

if !&diff
    syntax enable           " подсвечивать синтаксис
endif

if has("autocmd")
	filetype plugin on      " определять тип файла автоматически
    filetype indent on
endif

set ruler                   " показывать строку с позицией курсора

set number                  " показывать номера строк
set numberwidth=5

set showcmd                 " показывать буфер вводимой комманды

set matchpairs+=<:>         " показывать совпадающие скобки для html-тегов

set cmdheight=2             " сделать строку комманд больше
set cmdwinheight=16         " сделать окно комманд больше

set showtabline=2           " всегда показывать строку вкладок

set laststatus=2            " показывать строку статуса всегда

                            " формат строки статуса
set statusline=%1*%m%*%2*%r%*%3*%h%w%*%{expand(\"%:p:~\")}%<\%=Col:%3*%03c%*\ Ln:%3*%04l%*/%3*%04L%*\File:%(%3*%{&filetype}%*/%)%3*%{&fileformat}%*%(/%3*%{&fileencoding}%*%)

set title                   " показывать заголовок в окне терминала

                            " формат заголовка
set titlestring=%t%(\ %m%)%(\ %r%)%(\ %h%)%(\ %w%)%(\ (%{expand(\"%:p:~:h\")})%)\ -\ VIM

set autowrite               " сохранять файл при запуске консольных комманд

set tabstop=4               " табуляция в 4 пробела
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

set shiftround              " удалять лишние пробелы при отступе

set confirm                 " диалоги вместо сообщений об ошибках
set shortmess=fimnrxoOtTI   " использовать сокращенные диалоги

set incsearch               " поиск
set hlsearch

set ignorecase              " игнорировать регистр, если запрос в нижнем регистре
set smartcase

set infercase               " Автодополнения

set termencoding=utf-8      " кодировки
set fileencodings=utf8,cp1251
set encoding=utf8

                            " фикс для русских клавиш
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё~

                            " разрешить переход на новую/предыдущую строку
set whichwrap=b,s,h,l,<,>,~,[,]

set pastetoggle=<F12>       " переключение режима отступов при вставке

set wildmenu                " использовать wildmenu ...
set wildcharm=<TAB>         " ... с авто-дополнением ...
                            " ... как в bash, затем перебором
set wildmode=list:longest,full

set nowrap                  " не переносить строки
set linebreak
set nowrapscan

set nobackup
set noswapfile

set foldlevelstart=5
set foldmethod=syntax

set autochdir

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
inoremap <F2> <C-O>:execute ':w'<CR>
vnoremap <F2> <Esc>:execute ':w'<CR>

    " убрать/показать дерево
nnoremap <F3> :execute 'NERDTreeToggle ' . getcwd()<CR>
inoremap <F3> <C-O>:execute 'NERDTreeToggle ' . getcwd()<CR>
vnoremap <F3> <Esc>:execute 'NERDTreeToggle ' . getcwd()<CR>

    " переключение между окнами
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

    " закрытие html-тегов
imap <C-_> </<C-X><C-O> 

    " ускоренное передвижение по файлу
nmap <C-H> 5h
nmap <C-J> 5j
nmap <C-K> 5k
nmap <C-L> 5l

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

    " Более привычные Page Up/Down, когда курсор остаётся в той же строке,
    " а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
    " Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
    " привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

    " выход из режима вставка по jj
imap jj <Esc>l
imap оо <Esc>l

"map to fuzzy finder text mate stylez
nnoremap <c-f> :FuzzyFinderTextMate<CR>

"mark syntax errors with :signs
let g:syntastic_enable_signs=1


let g:fuzzy_ignore = "gems/*"
let g:fuzzy_ignore = "*.git"
let g:fuzzy_ignore = "*.log"
let g:fuzzy_ignore = "*.jpg"
let g:fuzzy_ignore = "*.gif"
let g:fuzzy_ignore = "*.png"
let g:fuzzy_ignore = "vendor/*"

if has("autocmd")
	autocmd! bufwritepost $MYVIMRC source $MYVIMRC " автоматически перечитывать файл конфигурации VIM после его сохранения
endif

colorscheme desert256
