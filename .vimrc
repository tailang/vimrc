set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'
 Bundle 'msanders/snipmate.vim'
 Bundle 'mileszs/ack.vim'
 Bundle 'Shougo/neocomplcache.vim'
 Bundle 'Townk/vim-autoclose'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'vim-scripts/vim-auto-save'
 Bundle 'lucapette/vim-ruby-doc'
 Bundle 'flazz/vim-colorschemes'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'tmhedberg/matchit'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 " NERDTree 插件配置
 map <F2> :NERDTreeToggle<CR> 
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif "自动关闭

 "neocomplache 配置
 let g:neocomplcache_enable_at_startup = 1 "自动启动
 let g:neocomplcache_force_overwrite_completefunc = 1 "强制启动，避免无法运行

 "vim自带配置
 set rnu "显示相对行号
 set mouse=a "设置鼠标操作

 let mapleader = ","  "设置外部复制粘帖
 let g:mapleader = ","  
 map Y "+y  
 map P "+p  ""

 set tabstop=2 "设置tab键长度
 set sw=2
 set ts=2

 set foldmethod=syntax "代码折叠
 set foldlevelstart=99 "默认不折叠

 "easymotion配置
 let g:EasyMotion_leader_key = '<Leader>'

 "powerline 配置
 set laststatus=2
 set t_Co=256   
 set encoding=utf-8  
 set fillchars+=stl:\ ,stlnc:\

 "vim auto save
 let g:auto_save = 1  " enable AutoSave on Vim startup
 
 "主题颜色配置
 :colorscheme codeschool  
 
 "显示隐藏文件 
let NERDTreeShowHidden = 1
