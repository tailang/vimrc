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
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'
 Bundle 'msanders/snipmate.vim'
 Bundle 'mileszs/ack.vim'
 "Bundle 'Shougo/neocomplcache.vim' 
 Bundle 'Townk/vim-autoclose'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'vim-scripts/vim-auto-save'
 Bundle 'flazz/vim-colorschemes'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'tmhedberg/matchit'
 Bundle 'vim-scripts/fcitx.vim'
 Bundle 'slim-template/vim-slim'
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

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 " NERDTree 插件配置
 "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 map <F3> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif "自动关闭

 let NERDTreeShowHidden = 1 "NERDTREE显示隐藏文件 


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "neocomplache 配置
 "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "let g:neocomplcache_enable_at_startup = 1 "自动启动
 "let g:neocomplcache_force_overwrite_completefunc = 1 "强制启动，避免无法运行


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "powerline 配置
 "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set laststatus=2
 set t_Co=256
 set encoding=utf-8
 set fillchars+=stl:\ ,stlnc:\


 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "vim auto save
 "
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 let g:auto_save = 1  " enable AutoSave on Vim startup



 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "Ctrlp
 "
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 nnoremap <silent> <C-t> :ClearAllCtrlPCache<CR>\|:CtrlP<CR> "Bindi C-t for Clear all cache and open CtrlP



 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "vim其它配置
 "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set rnu "显示相对行号
 set mouse=a "设置鼠标操作
 
 let mapleader = ","  "设置外部复制粘帖
 let g:mapleader = ","  
 map Y "+y
 map P "+p

 set tabstop=2 "设置tab键长度
 set sw=2
 set ts=2

 set list "设置空格显示为
 set listchars=trail:+

 set foldmethod=syntax "代码折叠
 set foldlevelstart=99 "默认不折叠

 :colorscheme codeschool "设置色彩主题

 if (has("gui_running")) "如果是gvim
  set lines=28    "设置行数，也就是上下的长度
  set columns=125    "设置列数，也就是左右的宽度
  winpos 120 50    "设置窗口的位置
 endif

 set cursorline  "设置光标行
 set noswapfile "不要生成swap文件
 set nobackup
 set bufhidden=hide "当buffer被丢弃的时候隐藏它
 set guicursor=n-v-c:hor10 "normal下贯标显示为下划线
 set expandtab                 "Use space instead of tabs

 "gvim Toggle Menu and Toolbar快速隐藏与显示
 set guioptions-=m
 set guioptions-=T
 map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

