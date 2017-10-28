set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"https://github.com/universal-ctags/ctags

Plugin 'VundleVim/Vundle.vim'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'vim-airline/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/a.vim'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'godlygeek/csapprox'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
"Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'diepm/vim-rest-console'
Bundle 'vim-scripts/AnsiEsc.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
"
call vundle#end()            " required
filetype plugin indent on    " required
"filetype plugin on  

"让vim记忆上次编辑的位置
autocmd BufReadPost *
    \ if line("'\"")>0&&line("'\"")<=line("$") |
    \   exe "normal g'\"" |
    \ endif

set updatetime=100

let NERDTreeIgnore = ['\.o$', '\.so$']
let g:NERDTreeMouseMode = 3

let g:cpp_class_scope_highlight = 1

let g:ag_prg="ag --cpp --cc --vimgrep"

"for airline
set laststatus=2 
let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#buffer_idx_mode = 1 
"let g:airline_powerline_fonts = 1

let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_mruf_max = 250
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o

let g:ycm_global_ycm_extra_conf = '~/my_vim_config/ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_filepath_completion_use_working_dir = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_log_level = 'debug'


set fileformat=unix
set go-=r
set go-=b
set vb t_vb=".
set t_Co=256
set fencs=ucs-bom,utf-8,gbk,gb2312
set ambiwidth=double
set formatoptions-=r
set more
set t_ut=

set wrap           " 自动换行
set linebreak      " 整词换行


"语法高亮
syntax enable   
syntax on 
"set background=dark
"colorscheme solarized
color Corn

set backspace=indent,eol,start
set foldenable " Turn on folding
set foldmethod=indent " Make folding indent sensitive
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't oset helplang=cn
set autoread
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
set selection=exclusive
set selectmode=key
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
set tags=~/mytags/tags,tags


set autoindent " same level indent
set smartindent " next level indent

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
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 30
let Tlist_Use_SingleClick = 1
filetype plugin on
"打开Tlist
map <leader>o :TagbarToggle<cr>
autocmd FileType c,cpp,h.py TagbarOpen | wincmd p
"map <leader>o :Tlist<cr>
"autocmd FileType c,cpp,h.py TlistOpen | wincmd p


nmap <F6> :w<cr>:make -j8<cr>:bot cw<cr>
nmap <F5> :make -j8<cr>:bot cw<cr>
nmap <leader>bn :bn<cr>
noremap <Leader>s :update<CR>
inoremap <Leader>s <esc>:update<CR>
nmap <leader>cv :VCSVimDiff<cr>

"A
map <leader>a :A<cr>

"打开文件管理窗口
map <leader>p :NERDTreeToggle<cr>

let g:VCSCommandMapPrefix=',v'

nmap <C-Right> :wincmd l<CR>
nmap <C-Left> :wincmd h<CR>
nmap <C-Up> :wincmd k<CR>
nmap <C-Down> :wincmd j<CR>
scriptencoding utf-8
set encoding=utf-8

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
