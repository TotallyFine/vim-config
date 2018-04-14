set nocompatible "required
filetype off "required

"将Vundle加入运行时路径并初始化
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"若Vundle安装的插件不是默认的则使用下面的命令来加入
"call vundle#begin('~/som/path/here')

"让Vundle进行管理
Plugin 'gmarik/Vundle.vim'

"将自己的插件添加到下面
Plugin 'tmhedberg/SimpylFold' "自动折叠插件
Plugin 'vim-scripts/indentpython.vim' "自动缩进符合PEP8标准
Plugin 'scrooloose/syntastic'"每次保存文件时Vim会检查代码的语法
Plugin 'nvie/vim-flake8' "添加PEP8代码风格的检查
Plugin 'jnurmine/Zenburn' "colorscheme
Plugin 'alteraction/vim-colors-solarized'
Plugin 'tpope/vim-fugitive' "在vim中执行基本的git命令
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}"Powerline的其他配置见文件最下方，一开始statusline中会显示错误的字符，最后通过更改终端的字体得到解决


"所有的插件必须添加在上面
call vundle#end()
filetype plugin indent on
"打开vim输入:PluginInstall vim就会自动下载所有的插件并自动安装


"进行按键映射，设置不使用鼠标切换分割布局
"ctrl+hjkl 实现对应的窗口切换
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"进行代码折叠,但是单纯的使用vim本身提供的代码折叠不好用，应该在上面Vudle插件块中写下Plugin'tmhedberg/SimpylFold'再执行:PluginInstall
set foldmethod=indent
set foldlevel=99
"映射za到空格键，更方便折叠
nnoremap <space> za

"代码缩进符合PEP8标准
"这些设置让Vim中的Tab相当于4个空格，确保每行代码长度不超过80个字符，并且会以unix格式存储，避免在推送到github上或者分享的时候出问题
"对于其他的开发可以设置对应的文件的缩进形式
au BufNewFile,BufRead *.py
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix
"自动缩进有用，但是在某些情况下比如函数有多行的时候并不会总是达到想要的效果，使用Plugin 'vim-scripts/indentpython.vim'

"标示不必要的字符，这会将多余的空白字符标示出来，很可能是红色
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h, match BadWithespace /\s\+$/

"自动补全可以参考YouCompleteMe

"代码变得漂亮
let python_highlight_all=1

syntax enable
syntax on  " 自动语法高亮
set background=dark " 设置背景为暗色
" 选择配色方案GUI模式可以尝试solarized，终端可以尝试Zenburn
" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'
if has('gui_running')
				set background=dark
				colorscheme solarized
else
				colorscheme zenburn
endif

set number " 显示行号
set smartindent " 智能缩进
"set tabstop=2  " 设置tab的长度
"set cursorline " 突出显示当前行
"set spell " 拼写检查


set showmode " 左下角显示当前的模式

set encoding=utf-8 " 使用utf-8编码

filetype plugin indent on " 开启插件
set cmdheight=1 " 设置命令行的行数为1

set laststatus=2 " 显示状态栏，默认为1不显示
let g:Powerline_symbols='fancy'
set t_Co=256
set guifont=PowerlineSymbols\for\Powerline
"set statusline= " 设置状态栏信息
"set statusline+=%7*\[%n] " buffernr
"set statusline+=%1*\%<%F\ " 文件路径
"set statusline+=%2*\ %y\ " 文件类型
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''} " 编码1
"set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\ " 编码2
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\ " 语言&是否高亮，H表示高亮
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\ " 光标所在行号/总行数（百分比）
"set statusline+=%9*\ col:%03c\ " 光标所在列
"set statusline+=%0*\ \ %m%r%w\ %P\ \ " Modified? Read only? Top/bottom
"function! HighlightSearch()
"		if &hls
"				return 'H'
"		else
"				return ''
"		endif
"endfunction
"hi User1 ctermfg=white ctermbg=darkred
"hi User2 ctermfg=blue ctermbg=58
"hi User3 ctermfg=white ctermbg=100
"hi User4 ctermfg=darkred ctermbg=95
"hi User5 ctermfg=darkred ctermbg=77
"hi User7 ctermfg=darkred ctermbg=blue cterm=bold
"hi User8 ctermfg=231 ctermbg=blue
"hi User0 ctermfg=yellow ctermbg=138
