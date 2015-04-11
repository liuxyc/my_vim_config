
colorscheme Corn

set laststatus=2 

set go-=r
set go-=b
set vb t_vb=".
set t_Co=256
set fencs=ucs-bom,utf-8,gbk
set ambiwidth=double
set formatoptions-=r
set more
set t_ut=

set wrap           " 自动换行
set linebreak      " 整词换行


"语法高亮
syntax enable   
syntax on 

set nocompatible
set backspace=indent,eol,start
set foldenable " Turn on folding
set foldmethod=indent " Make folding indent sensitive
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't oset helplang=cn
set autoread
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set modelines=0
 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set nopaste 
set hlsearch
set nocp

set enc=utf-8
set tenc=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom,gbk
set number
set tags=~/mytags/tags,~/mytags/py_tag,./tags,tags,./tag;


set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按照名称排序
let Tlist_Sort_Type = "name"

" 在右侧显示窗口
let Tlist_Use_Right_Window = 1

" 压缩方式
let Tlist_Compart_Format = 1

" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 1

" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0
" 自动刷新
let Tlist_Auto_Update = 1

let Tlist_Display_Tag_Scop = 1
let Tlist_Display_Prototyp = 1
let Tlist_Auto_Update = 1
filetype plugin on

"打开Tlist
map <leader>o :Tlist<cr>

"打开文件管理窗口
map <leader>p :NERDTreeToggle<cr>

map <c-x><c-n> <tab-s>

let g:pydiction_location = '/home/liuxiaoyu/.vim/pydiction/complete-dict'

let g:pydiction_menu_height = 5

:silent cs add ~/mytags/cscope.out

set makeprg=eagle.py
nmap <F6> :make <cr>:cw<cr>
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#bufferline#enabled = 0 
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'



