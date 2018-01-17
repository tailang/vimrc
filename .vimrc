set nocompatible              " be iMproved, required
filetype off                  " required

" ==============================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ==============================================================================
" 安装的所有插件
call vundle#begin()

" 必须安装，let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 来自github

"主题
Plugin 'flazz/vim-colorschemes'

"底部状态栏
Plugin 'Lokaltog/vim-powerline'

"文件目录
Plugin 'scrooloose/nerdtree'

"快速查找
Plugin 'kien/ctrlp.vim'

"快速注释
Plugin 'scrooloose/nerdcommenter'


"自动补全
Plugin 'Shougo/neocomplcache.vim'

"括号补全
Plugin 'jiangmiao/auto-pairs'

"语法分析
"Plugin 'vim-syntastic/syntastic'

" 来自vim

" non github repos

call vundle#end()            " required

" ==============================================================================
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ==============================================================================
" vundle命令
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ==============================================================================
" 组件设置
" flazz/vim-colorschemes,主题设置
colorscheme  codeschool

"NERDTree 插件配置
map tt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1 "NERDTREE显示隐藏文件
" ==============================================================================
" vim原生设置
" set rnu "显示相对行号
set nu
syntax on " 打开语法检测

set tabstop=2 "设置tab键长度
set sw=2
set ts=2

"set list "设置空格显示为+号
"set listchars=trail:+

set foldmethod=syntax "代码折叠
set foldlevelstart=99 "默认不折叠

set cursorline  "设置光标行
set cursorcolumn "设置光标列
set noswapfile "不要生成swap文件
set nobackup
set bufhidden=hide "当buffer被丢弃的时候隐藏它
set expandtab                 "Use space instead of tabs

let mapleader = ","  "设置外部复制粘帖
let g:mapleader = ","
map Y "+y
map P "+p
 
"noremap ok o <esc> "插入新行
"option+h 回到行首
noremap ˙ ^  
"option+l 回到行尾
noremap ¬ $
"option+k 回到顶部
noremap ˚ gg
"option+j 回到底部
noremap ∆ G
"neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1 "打开vim时自动打开
let g:neocomplcache_force_overwrite_completefunc = 1
