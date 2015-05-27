set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Bundle 'gmarik/vundle'  
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'vim-scripts/a.vim'


" All of your Plugins must be added before the following line
"
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on  

colorscheme Corn

"for airline
set laststatus=2 
let g:airline_detect_whitespace=0

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
set tags=~/mytags/tags,./tags,tags,./tag;


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


:silent cs add ~/mytags/cscope.out

nmap <F6> :make <cr>:cw<cr>

"A
map <leader>a :A<cr>

"let g:Powerline_symbols = 'fancy'

let g:VCSCommandMapPrefix=',v'
