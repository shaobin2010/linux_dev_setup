#!/bin/bash

set -e 

if [ ! -e ~/.vimrc ]; then
    echo "create .vimrc file"
    touch ~/.vimrc
fi

cat > ~/.vimrc <<EOF

"==========================================
" General Settings
"==========================================

" 关闭 vi 兼容模式
set nocompatible 

" 开启语法高亮  
syntax enable  

" 开启语法高亮
syntax on  

" 设置取消备份，禁止临时文件生成  
set nobackup  
set noswapfile  

" 显示当前横竖线  
"set cursorline  
"set cursorcolumn  


"==========================================
" Display Settings
"==========================================
"
" 显示当前行号和列号
set ruler

" 突出显示当前行
set cursorline 

" 在状态栏显示正在输入的命令
set showcmd

" 左下角显示当前Vim模式
set showmode

" 显示行号  
set number 

" 设置代码匹配,包括括号匹配情况  
set showmatch  

" 开启及时搜索(is)  
set incsearch  

" 设置搜索高亮(hlsearch)  
set hls  

" 设置搜索时忽略大小写  
set ignorecase  

" 当搜索的时候尝试smart  
set smartcase  


 "
 "==========================================
 " FileEncode Settings
 "==========================================

 " 设置编码方式  
 set encoding=utf-8  


EOF

echo "Done"
exit 0
