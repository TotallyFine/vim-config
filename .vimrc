syntax enable
syntax on  " 自动语法高亮
set background=dark " 设置背景为暗色
colorscheme dracula " 选择配色方案 molokai solarized desert dracula

set number " 显示行号
set smartindent " 智能缩进
set tabstop=2  " 设置tab的长度
"set cursorline " 突出显示当前行

set showmode " 左下角显示当前的模式

set encoding=utf-8 " 使用utf-8编码

filetype plugin indent on " 开启插件
set cmdheight=1 " 设置命令行的行数为1

set laststatus=2 " 显示状态栏，默认为1不显示
set statusline= " 设置状态栏信息
set statusline+=%7*\[%n] " buffernr
set statusline+=%1*\%<%F\ " 文件路径
set statusline+=%2*\ %y\ " 文件类型
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''} " 编码1
set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\ " 编码2
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\ " 语言&是否高亮，H表示高亮
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\ " 光标所在行号/总行数（百分比）
set statusline+=%9*\ col:%03c\ " 光标所在列
set statusline+=%0*\ \ %m%r%w\ %P\ \ " Modified? Read only? Top/bottom
function! HighlightSearch()
		if &hls
				return 'H'
		else
				return ''
		endif
endfunction
hi User1 ctermfg=white ctermbg=darkred
hi User2 ctermfg=blue ctermbg=58
hi User3 ctermfg=white ctermbg=100
hi User4 ctermfg=darkred ctermbg=95
hi User5 ctermfg=darkred ctermbg=77
hi User7 ctermfg=darkred ctermbg=blue cterm=bold
hi User8 ctermfg=231 ctermbg=blue
hi User0 ctermfg=yellow ctermbg=138
