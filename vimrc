set nocompatible
filetype off

"git clone https://github.com/junegunn/vim-plug.git ~/.vim/autoload/plug.vim
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"https://github.com/universal-ctags/ctags

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'vim-scripts/vcscommand.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/a.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'godlygeek/csapprox'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'Raimondi/delimitMate'
Plug 'diepm/vim-rest-console'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-fugitive'
Plug 'drmingdrmer/vim-toggle-quickfix'
call plug#end()


" All of your Plugins must be added before the following line
"
filetype plugin indent on    " required
filetype plugin on  
filetype on  

"让vim记忆上次编辑的位置
autocmd BufReadPost *
    \ if line("'\"")>0&&line("'\"")<=line("$") |
    \   exe "normal g'\"" |
    \ endif

set updatetime=100

let NERDTreeIgnore = ['\.o$', '\.so$', '\.os$']
let g:NERDTreeMouseMode = 3

let g:cpp_class_scope_highlight = 1

let g:ag_prg="ag --cpp --cc --vimgrep"
"let g:ag_working_path_mode='r'

"for airline
set laststatus=2 
let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#buffer_idx_mode = 1 
"let g:airline_powerline_fonts = 1

let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_mruf_max = 500
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o

let g:ycm_global_ycm_extra_conf = '~/my_vim_config/ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_filepath_completion_use_working_dir = 0
let g:ycm_confirm_extra_conf = 0
"let g:ycm_filetype_specific_completion_to_disable = {'cpp': 1}


set fileformat=unix
set go-=r
set go-=b
set vb t_vb=".
set t_Co=256
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
set hlsearch
set nocp

set enc=utf-8
set tenc=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom,gbk,gb2312
scriptencoding utf-8
set number
set tags=~/mytags/tags,tags


set autoindent " same level indent
set smartindent " next level indent

"打开Tlist
map <leader>o :TagbarToggle<cr>
let g:tagbar_autoclose=0
"autocmd FileType c,cpp,h.py TagbarOpen | wincmd p
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
nmap <c-]> g<c-]>

nmap <leader>q <Plug>window:quickfix:toggle

"quickfix always on bottom
au FileType qf wincmd J

