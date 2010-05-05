" Несовместимо с vi
set nocompatible

" Больше комманд в истории
set history=128

" и undo
set undolevels=512

" Перерисовывать буфер менее плавно
set lazyredraw

" перечитывать измененные файлы автоматически
set autoread

" Больше цветов
set t_Co=256

" Backspace в режиме вставки
set backspace=2

if !&diff
	" подсвечивать синтаксис
	syntax enable
endif

if has("autocmd")
	" определять тип файла автоматически
	filetype plugin on
endif

" показывать строку с позицией курсора
set ruler

" Показывать номера строк
set number
set numberwidth=5

" Показывать буфер вводимой комманды
set showcmd

" Показывать первую парную скобку после ввода второй
set showmatch

" Показывать совпадающие скобки для html-тегов
set matchpairs+=<:>

" Сделать строку комманд больше
set cmdheight=2

" Сделать окно комманд больше
set cmdwinheight=16

" Всегда показывать строку вкладок
set showtabline=2

" Показывать строку статуса всегда
set laststatus=2

" формат строки статуса
set statusline=%1*%m%*%2*%r%*%3*%h%w%*%{expand(\"%:p:~\")}%<\%=Col:%3*%03c%*\ Ln:%3*%04l%*/%3*%04L%*\File:%(%3*%{&filetype}%*/%)%3*%{&fileformat}%*%(/%3*%{&fileencoding}%*%)

" Показывать заголовок в окне терминала
set title

" Формат заголовка
set titlestring=%t%(\ %m%)%(\ %r%)%(\ %h%)%(\ %w%)%(\ (%{expand(\"%:p:~:h\")})%)\ -\ VIM

" Табуляция в 4 пробела
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Удалять лишние пробелы при отступе
set shiftround

" Диалоги вместо сообщений об ошибках
set confirm

" Использовать сокращенные диалоги
set shortmess=fimnrxoOtTI

" Поиск
set incsearch
set hlsearch

" Игнорировать регистр, если запрос в нижнем регистре
set ignorecase
set smartcase

" Автодополнения
set infercase

" Не переносить строки
set nowrap

" Кодировки
set termencoding=utf-8

set fileencodings=utf8,cp1251
set encoding=utf8

" фикс для русских клавиш
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё~

" разрешить переход на новую/предыдущую строку
set whichwrap=b,s,h,l,<,>,~,[,]

" переключение режима отступов при вставке
set pastetoggle=<F12>

" Использовать wildmenu ...
set wildmenu

" ... с авто-дополнением ...
set wildcharm=<TAB>

" ... как в bash, затем перебором
set wildmode=list:longest,full

set autoindent
set smartindent

" горячие клавиши

" табы
" новая вкладка
nnoremap <C-T> :tabnew<CR>
inoremap <C-T> <C-O>:tabnew<CR>
vnoremap <C-T> <ESC>:tabnew<CR>

" предыдущая вкладка
nnoremap <C-H-Tab> :call TabAction("jump", "left")<CR>
inoremap <C-H-Tab> <C-O>:call TabAction("jump", "left")<CR>
vnoremap <C-H-Tab> <ESC>:call TabAction("jump", "left")<CR>

" следующая вкладка
nnoremap <C-Tab> :call TabAction("jump", "right")<CR>
inoremap <C-Tab> <C-O>:call TabAction("jump", "right")<CR>
vnoremap <C-Tab> <ESC>:call TabAction("jump", "right")<CR>

" Закрыть вкладку
" nmap <A-F4> :execute ':tabclose'<CR>
" map <A-F4> <C-O>:execute ':tabclose'<CR>
" map <A-F4> <Esc>:execute ':tabclose'<CR>

" Сохранить
nnoremap <C-S> :execute ':w'<CR>
inoremap <C-S> <C-O>:execute ':w'<CR>
vnoremap <C-S> <Esc>:execute ':w'<CR>

nnoremap <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
inoremap <F2> <C-O>:execute 'NERDTreeToggle ' . getcwd()<CR>
vnoremap <F2> <Esc>:execute 'NERDTreeToggle ' . getcwd()<CR>

map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
 
imap jj <Esc>
imap оо <Esc>
set linebreak


set nowrapscan

set nobackup
set noswapfile

set foldlevelstart=5
set foldmethod=syntax

" let g:fuzzy_ignore = "gems/*"


set autochdir

" --- авто-команды ---

if has("autocmd")

	" переопределять переменные для некоторых типов файлов
	autocmd! filetype help setlocal nonumber

	" переопределять переменные для некоторых файлов по расширению
	autocmd! bufnewfile,bufread *.erb setlocal filetype=html

	" автоматически перечитывать файл конфигурации VIM после его сохранения
	autocmd! bufwritepost $MYVIMRC source $MYVIMRC

endif


colorscheme desert256
