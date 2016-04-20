" vundle template added by elloop @20160403

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" customize plugins
" ycm
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/a.vim'

" from vimscript"
" Plugin 'ctrlp'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" old vim config 
"echom "(>^.^<)"

let mapleader = ","

" window operations {{{
"========================================================
"close current window"
:nnoremap <leader>x <esc>:close<cr>

"run system command"
:nnoremap <leader>rr :!

"save content"
:nnoremap <leader>s :w<cr>

"save content all window"
:nnoremap <leader>sa :wa<cr>

"save content & close"
:nnoremap <leader>sq :wq<cr>

"close"
:nnoremap <leader>q :wq<cr>

"quit all"
:nnoremap <leader>qa :qa<cr>

"quit all force"
:nnoremap <leader>fqa :qa!<cr>

" force quit current"
:nnoremap <leader>fq :q!<cr>

"source vimrc"
:nnoremap <leader>sv :source $MYVIMRC<cr>
"vsplit a window, require a file_name"
:nnoremap <leader>vs :vsplit 
"split a window, require a file_name"
:nnoremap <leader>hs :split 
" }}}

" insert mode {{{
" begin a new line below.
:inoremap <c-cr> <esc>o
"quick switch to normal node"
:inoremap jk <esc>l
" }}}

"normal mode {{{
"}}}
"
"visual mode {{{
"quick switch to normal node"
:vnoremap jk <esc>l

"surround selected content with Double Quote"
:vnoremap <leader>dq <esc>`<i"<esc>`>a"<esc>
"}}}

" filetype_markdown {{{
augroup filetype_markdown
    autocmd!
    "go to header"
    autocmd FileType mkd :onoremap <buffer> ih :<c-u>execute "normal! ?^[\-=]\\+$\r:nohlsearch\rkvg_"<cr>  
augroup END
"}}}

"filetype_vimscript {{{
augroup filetype_vimscript
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}"

"ruchee 's comment {{{
" ---------- Ctrl系按键 ----------
"
" Ctrl + H                   --光标移当前行行首       [插入模式]
" Ctrl + J                   --光标移下一行行首       [插入模式]
" Ctrl + K                   --光标移上一行行尾       [插入模式]
" Ctrl + L                   --光标移当前行行尾       [插入模式]

" ---------- Meta系按键 ----------
"
" Alt  + H                   --光标左移一格           [插入模式]
" Alt  + J                   --光标下移一格           [插入模式]
" Alt  + K                   --光标上移一格           [插入模式]
" Alt  + L                   --光标右移一格           [插入模式]

" ---------- Leader系按键 ----------
"
" \c[小写]                   --复制至公共剪贴板       [仅选择模式]
" \a[小写]                   --复制所有至公共剪贴板   [Normal模式可用]
" \v[小写]                   --从公共剪贴板粘贴       [全模式可用]
"
" \T[大写]                   --一键加载语法模板       [全模式可用]
" \R[大写]                   --源码一键编译运行       [全模式可用]
"
" \rb                        --一键去除所有尾部空白   [全模式可用]
" \rm                        --一键去除字符         [全模式可用]
" \rt                        --一键替换全部Tab为空格  [全模式可用]
"
" \ww                        --打开Vimwiki主页
" \wa                        --一键编译所有Vimwiki源文件
" \nt                        --打开NERDTree文件树窗口
" \tl                        --打开/关闭TagList/TxtBrowser窗口
" \ff                        --打开ctrlp.vim文件搜索窗口
" \be                        --打开BufExplorer窗口    [独立显示] [Normal模式可用]
" \bs                        --打开BufExplorer窗口    [分割显示] [Normal模式可用]
" \bv                        --打开BufExplorer窗口    [边栏显示] [Normal模式可用]
" \ud                        --打开/关闭编辑历史窗口
" \fe                        --打开/关闭文件编码窗口
" \ig                        --显示/关闭对齐线
" \bb                        --按=号对齐代码
" \bn                        --自定义对齐
" \th                        --一键生成与当前编辑文件同名的HTML文件 [不输出行号]
" \ev                        --编辑当前所使用的Vim配置文件
" \mt                        --在当前目录下递归生成tags文件
"
" \cc                        --添加注释               [NERD_commenter]
" \cu                        --取消注释               [NERD_commenter]
" \cm                        --添加块注释             [NERD_commenter]
" \cs                        --添加SexStyle块注释     [NERD_commenter]
"
" \16                        --以十六进制格式查看
" \r16                       --返回普通格式
"
" \php                       --一键切换到PHP语法高亮
" \js                        --一键切换到JavaScript语法高亮
" \css                       --一键切换到CSS语法高亮
" \html                      --一键切换到HTML语法高亮

" ---------- 补全命令 ----------
"
" Ctrl + P                   --单词补全               [插入模式]
" Tab键                      --语法结构补全           [插入模式][snipMate插件]
" Ctrl+Y+,                   --HTML标签补全           [插入模式][emmet插件]

" ---------- 格式化命令 ----------
"
" ==                         --缩进当前行
" =G                         --缩进直到文件结尾
" gg=G                       --缩进整个文件
" 行号G=行号G                --缩进指定区间

" u [小写]                   --单步复原               [非插入模式]
" U [大写]                   --整行复原               [非插入模式]
" Ctrl + R                   --撤消“撤消”操作         [非插入模式]
"
" ---------- 查看命令 ----------
"
" Ctrl+G                     --显示当前文件和光标的粗略信息
" g Ctrl+G                   --显示当前文件和光标的详细信息
"
" ---------- 搜索命令 ----------
"
" #                          --向前搜索当前光标所在字符
" *                          --向后搜索当前光标所在字符
" ?                          --向前搜索
" /                          --向后搜索
"
" ---------- 跳转命令 ----------
"
" Ctrl + ]                   --转到函数定义           [ctags跳转]
" Ctrl + T                   --返回调用函数           [ctags跳转]
" g Ctrl+]                   --列出可选跳转列表       [ctags跳转]

" 0 or ^ or $                --跳至 行首 or 第一个非空字符 or 行尾
" %                          --在匹配的括号间跳跃
" { or }                     --按段落上/下跳跃
" f字符                      --跳至从当前光标开始本行第一个指定字符出现的位置
" gd                         --跳至当前光标所在单词首次出现的位置
" gf                         --打开当前光标所在的文件名，如果确实存在该文件的话
"
" [ Ctrl+D                   --跳至当前光标所在变量的首次定义位置 [从文件头部开始]
" [ Ctrl+I                   --跳至当前光标所在变量的首次出现位置 [从文件头部开始]
" [ D                        --列出当前光标所在变量的所有定义位置 [从文件头部开始]
" [ I                        --列出当前光标所在变量的所有出现位置 [从文件头部开始]
"
" ---------- 文本操作 ----------
"
" dw de d0 d^ d$ dd          --删除
" cw ce c0 c^ c$ cc          --删除并进入插入模式
" yw ye y0 y^ y$ yy          --复制
" vw ve v0 v^ v$ vv          --选中
"
" di分隔符                   --删除指定分隔符之间的内容 [不包括分隔符]
" ci分隔符                   --删除指定分隔符之间的内容并进入插入模式 [不包括分隔符]
" yi分隔符                   --复制指定分隔符之间的内容 [不包括分隔符]
" vi分隔符                   --选中指定分隔符之间的内容 [不包括分隔符]
"
" da分隔符                   --删除指定分隔符之间的内容 [包括分隔符]
" ca分隔符                   --删除指定分隔符之间的内容并进入插入模式 [包括分隔符]
" ya分隔符                   --复制指定分隔符之间的内容 [包括分隔符]
" va分隔符                   --选中指定分隔符之间的内容 [包括分隔符]
"
" Xi和Xa都可以在X后面加入一个数字，以指代所处理的括号层次
" 如 d2i( 执行的是删除当前光标外围第二层括号内的所有内容
"
" dt字符                     --删除本行内容，直到遇到第一个指定字符 [不包括该字符]
" ct字符                     --删除本行内容，直到遇到第一个指定字符并进入插入模式 [不包括该字符]
" yt字符                     --复制本行内容，直到遇到第一个指定字符 [不包括该字符]
" vt字符                     --选中本行内容，直到遇到第一个指定字符 [不包括该字符]
"
" df字符                     --删除本行内容，直到遇到第一个指定字符 [包括该字符]
" cf字符                     --删除本行内容，直到遇到第一个指定字符并进入插入模式 [包括该字符]
" yf字符                     --复制本行内容，直到遇到第一个指定字符 [包括该字符]
" vf字符                     --选中本行内容，直到遇到第一个指定字符 [包括该字符]
"
" XT 和 XF 是 Xt/Xf 的反方向操作
"
" cs'"                        --将外围的单引号变成双引号     [surround.vim插件]
" cs"<p>                      --将外围的双引号变成HTML标签对 [surround.vim插件]
" cst"                        --将外围的界定符变成双引号     [surround.vim插件]
" ds"                         --删除外围的双引号定界符       [surround.vim插件]
"
" ---------- 便捷操作 ----------
"
" Ctrl + A                   --将当前光标所在数字自增1        [仅普通模式可用]
" Ctrl + X                   --将当前光标所在数字自减0        [仅普通模式可用]
" :g/^/m0                    --将整个文件所有行排列顺序颠倒   [命令模式]
" m字符       and '字符      --标记位置 and 跳转到标记位置
" q字符 xxx q and @字符      --录制宏   and 执行宏
"
" ---------- 代码折叠 ----------
"
" zc                         --折叠
" zC                         --对所在范围内所有嵌套的折叠点进行折叠
" zo                         --展开折叠
" zO                         --对所在范围内所有嵌套的折叠点展开
" [z                         --到当前打开的折叠的开始处
" ]z                         --到当前打开的折叠的末尾处
" zj                         --向下移动到后一个折叠的开始处
" zk                         --向上移动到前一个折叠的结束处
"
" ---------- Vimwiki [Vim中的wiki/blog系统] ----------------
"
" 链接：[[链接地址|链接描述]]
" 图片：{{图片地址||属性1="属性值" 属性2="属性值"}}
" 代码：{{{class="brush: cpp" 代码}}}
"
" ---------- 其他常用内建命令 ------------------------------
"
" :se ff=unix                --更改文件格式，可选 unix、dos、mac
" :se ft=cpp                 --更改文件语法着色模式
"}}}'"

" judge os {{{
if (has("win32") || has("win64"))
    let g:is_win = 1
else
    let g:is_win = 0
endif

if (has("unix")) 
    let g:is_unix = 1
else
    let g:is_unix = 0
endif

if has("mac")
    let g:is_mac = 1
else
    let g:is_mac = 0
endif

" }}}

" judge GUI {{{
if has("gui_running")
    let g:is_gui = 1
else
    let g:is_gui = 0
endif
" }}}



" reset filetype by suffix {{{
augroup suffix_2_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.h        setlocal ft=cpp
    autocmd BufRead,BufNewFile *.di       setlocal ft=d
    autocmd BufRead,BufNewFile *.cl       setlocal ft=lisp
    autocmd BufRead,BufNewFile *.phpt     setlocal ft=php
    autocmd BufRead,BufNewFile *.inc      setlocal ft=php
    autocmd BufRead,BufNewFile *.sql      setlocal ft=mysql
    autocmd BufRead,BufNewFile *.tpl      setlocal ft=smarty
    autocmd BufRead,BufNewFile *.txt      setlocal ft=txt
    autocmd BufRead,BufNewFile hosts      setlocal ft=conf
    autocmd BufRead,BufNewFile http*.conf setlocal ft=apache
augroup END
" }}}


" color and font {{{
if g:is_win
  if g:is_gui
    set background=dark
    colorscheme solarized
    set guifont=Monaco:h11
  endif
elseif g:is_unix && g:is_mac == 0
  "mac is also unix"
  if g:is_gui
    set background=dark
    colorscheme solarized
    " set guifont="Droid Sans Mono":h16
  else
    colorscheme tango2
    set guifont=Monaco:h14
  endif
elseif g:is_mac
  "pure mac
  if g:is_gui
    set background=dark
    colorscheme solarized
    set guifont=Monaco:h14
  else
    colorscheme tango2
    set guifont=Monaco:h14
  endif
endif
" }}}


" basic setting {{{
" indent
set shiftwidth=4
set tabstop=4
set expandtab                " 将Tab自动转化成空格 [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set smartindent              " 智能自动缩进
""set relativenumber           " 开启相对行号
set number                     " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
""set nowrapscan               " 搜索到文件两端时不重新搜索
set ignorecase                       " 忽略大小写
set nocompatible             " 关闭兼容模式
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=indent        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=1              " 命令行的高度，默认为1
set autoread                 " 当文件在外部被修改时自动更新该文件
set nobackup                 " 不生成备份文件
set noswapfile               " 不生成交换文件
""set list                     " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代替
set listchars=tab:\~\ ,trail:.
set expandtab                " 将Tab自动转化成空格 [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set showmatch               " 显示括号配对情况
"set nowrap                  " 设置不自动换行

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全


" 设置文件编码和文件格式 {{{
set fileencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac,dos
if g:is_win
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif
" }}}

" }}}"

" GUI settings {{{
if g:is_gui
    " 启动时自动最大化窗口
    if g:is_win
        autocmd GUIEnter * simalt ~x
    endif
    "winpos 20 20            " 指定窗口出现的位置，坐标原点在屏幕左上角
    "set lines=20 columns=90 " 指定窗口大小，lines为高度，columns为宽度
    set guioptions+=c        " 使用字符提示框
    set guioptions-=m        " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L        " 隐藏左侧滚动条
    set guioptions-=r        " 隐藏右侧滚动条
    set guioptions-=b        " 隐藏底部滚动条
    set showtabline=0        " 隐藏Tab栏
    set cursorline           " 突出显示当前行
endif
" }}}


" ======= 引号 && 括号自动匹配 ======= {{{
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i

function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction
" }}}

"adjust_keyword_for_languages {{{
augroup adjust_keyword_for_languages
    autocmd!
    autocmd FileType clojure  set iskeyword-=.
    autocmd FileType clojure  set iskeyword-=>
    autocmd FileType perl,php set iskeyword-=$
    autocmd FileType perl,php set iskeyword-=-
    autocmd FileType ruby     set iskeyword+=!
    autocmd FileType ruby     set iskeyword+=?
augroup END
"}}}"


" add_dictionary_by_suffix {{{
augroup add_dictionary_by_suffix
    autocmd!
    ""autocmd FileType c          call AddCDict()
    ""autocmd FileType cpp        call AddCPPDict()
    ""autocmd FileType java       call AddJavaDict()
    ""autocmd FileType scala      call AddScalaDict()
    ""autocmd FileType lua        call AddLuaDict()
    ""autocmd FileType perl       call AddPerlDict()
    ""autocmd FileType php        call AddPHPDict()
    ""autocmd FileType python     call AddPythonDict()
    ""autocmd FileType ruby       call AddRubyDict()
    ""autocmd FileType javascript call AddJavaScriptDict()
    ""autocmd FileType css        call AddCSSDict()
augroup END
" }}}

" add dictionary function" {{{
function! AddCDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/c.txt
  else
    set dict+=~/.vim/dict/c.txt
  endif
  set complete+=k
endfunction

function! AddCPPDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/c.txt
    set dict+=$VIM/vimfiles/dict/cpp-stdlib.txt
    set dict+=$VIM/vimfiles/dict/cpp-boost.txt
  else
    set dict+=~/.vim/dict/c.txt
    set dict+=~/.vim/dict/cpp-stdlib.txt
    set dict+=~/.vim/dict/cpp-boost.txt
  endif
  set complete+=k
endfunction

function! AddJavaDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/java.txt
  else
    set dict+=~/.vim/dict/java.txt
  endif
  set complete+=k
endfunction

function! AddScalaDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/scala.txt
  else
    set dict+=~/.vim/dict/scala.txt
  endif
  set complete+=k
endfunction

function! AddLuaDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/lua.txt
  else
    set dict+=~/.vim/dict/lua.txt
  endif
  set complete+=k
endfunction

function! AddPerlDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/perl.txt
  else
    set dict+=~/.vim/dict/perl.txt
  endif
  set complete+=k
endfunction

function! AddPHPDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/php.txt
  else
    set dict+=~/.vim/dict/php.txt
  endif
  set complete+=k
endfunction

function! AddPythonDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/python.txt
  else
    set dict+=~/.vim/dict/python.txt
  endif
  set complete+=k
endfunction

function! AddRubyDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/ruby.txt
  else
    set dict+=~/.vim/dict/ruby.txt
  endif
  set complete+=k
endfunction

function! AddJavaScriptDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/javascript.txt
    set dict+=$VIM/vimfiles/dict/node.txt
  else
    set dict+=~/.vim/dict/javascript.txt
    set dict+=~/.vim/dict/node.txt
  endif
  set complete+=k
endfunction

function! AddCSSDict()
  if g:is_win
    set dict+=$VIM/vimfiles/dict/css.txt
  else
    set dict+=~/.vim/dict/css.txt
  endif
  set complete+=k
endfunction
" }}}


" 开启部分语法高亮的非默认特性
let python_highlight_all = 1                   " 打开全部Python高亮


" BufExplorer {{{
let g:bufExplorerSortBy = 'name'               " 按文件名排序
" }}}


" Tlist {{{
let Tlist_Show_One_File        = 1             " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow      = 1             " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window     = 1             " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close = 1             " 自动折叠
" }}}

" LoadTemplate {{{
if g:is_win
    ""let g:template_path = $VIM.'/vimfiles/template/'
else
    ""let g:template_path = '~/.vim/template/'
endif
" }}}

" NERD_commenter      注释处理插件
let NERDSpaceDelims = 1                        " 自动添加前置空格

" AuthorInfoDetect    自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合 {{{
""let g:vimrc_author   = 'Ruchee'                " 昵称
""let g:vimrc_email    = 'my@ruchee.com'         " 邮箱
""let g:vimrc_homepage = 'http://www.ruchee.com' " 个人主页
" }}}

" Indent_guides       显示对齐线 {{{
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
" }}}

" AirLine             彩色状态栏 {{{
let g:airline_theme = 'behelit'                " 设置主题
" }}}

" Syntastic           语法检查 {{{
let g:syntastic_check_on_open = 0              " 默认开启
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  [],
            \'passive_filetypes': ['c', 'cpp', 'h', 'html', 'css', 'xhtml', 'groovy', 'scala', 'clojure', 'racket', 'eruby', 'slim', 'jade', 'scss', 'less']
            \}                                 " 指定不需要检查的语言 [主要是因为开启这些语言的语法检查会妨碍到正常的工作]
" }}}

" 自定义编译器和编译参数 {{{
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_c_compiler_options = '-std=c11'
let g:syntastic_cpp_compiler_options = '-std=c++11'
" }}}


" javascript-libraries-syntax                    指定需要高亮的JS库 {{{
let g:used_javascript_libs = 'jquery,angularjs'
" }}}


" ======= 自定义快捷键 ======= " {{{

" Ctrl + H            光标移当前行行首[插入模式]、切换左窗口[Normal模式]
inoremap <c-h> <ESC>I
map <c-h> <c-w><c-h>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal模式]
inoremap <c-j> <ESC><Down>I
map <c-j> <c-w><c-j>

" Ctrl + K            光标移上一行行尾[插入模式]、切换上窗口[Normal模式]
inoremap <c-k> <ESC><Up>A
map <c-k> <c-w><c-k>

" Ctrl + L            光标移当前行行尾[插入模式]、切换右窗口[Normal模式]
inoremap <c-l> <ESC>A
map <c-l> <c-w><c-l>

" Alt  + H            光标左移一格
inoremap <m-h> <Left>

" Alt  + J            光标下移一格
inoremap <m-j> <Down>

" Alt  + K            光标上移一格
inoremap <m-k> <Up>

" Alt  + L            光标右移一格
inoremap <m-l> <Right>

" \c                  复制至公共剪贴板
vnoremap <leader>c "+y

" \a                  复制所有至公共剪贴板
nnoremap <leader>a <ESC>ggVG"+y<ESC>

" \v                  从公共剪贴板粘贴
inoremap <leader>v <ESC>"+pa
nnoremap <leader>v "+p
vnoremap <leader>v "+p

" \bb                 按=号对齐代码 [Tabular插件]
nnoremap <leader>bb :Tab /=<CR>

" \bn                 自定义对齐    [Tabular插件]
nnoremap <leader>tb :Tab /
vnoremap <leader>tb :Tab /

" \nt                 打开NERDTree窗口，在左侧栏显示
nnoremap <leader>nt :NERDTree<CR>

" \tl                 打开Taglist/TxtBrowser窗口，在右侧栏显示
nnoremap <leader>tl :Tlist<CR><c-w><c-l>

" \ff                 打开文件搜索窗口，在状态栏显示 [ctrlp.vim插件]
nnoremap <leader>ff :CtrlP<CR>

" \ud                 打开编辑历史窗口，在左侧栏显示 [Undotree插件]
nnoremap <leader>ud :UndotreeToggle<CR>

" \fe                 打开文件编码窗口，在右侧栏显示 [FencView插件]
nnoremap <leader>fe :FencView<CR>

" \16                 十六进制格式查看
nnoremap <leader>16 <ESC>:%!xxd<ESC>

" \r16                返回普通格式
nnoremap <leader>r16 <ESC>:%!xxd -r<ESC>

" \rb                 一键去除所有尾部空白
inoremap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <leader>rb :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
vnoremap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" \rm                 一键去除字符
inoremap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>
nnoremap <leader>rm :%s/<c-v><c-m>//g<CR>
vnoremap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>

" \rt                 一键替换全部Tab为空格
func! RemoveTabs()
    if &shiftwidth == 2
        exec "%s/	/  /g"
    elseif &shiftwidth == 4
        exec "%s/	/    /g"
    elseif &shiftwidth == 6
        exec "%s/	/      /g"
    elseif &shiftwidth == 8
        exec "%s/	/        /g"
    else
        exec "%s/	/ /g"
    end
endfunc

inoremap <leader>rt <ESC>:call RemoveTabs()<CR>
nnoremap <leader>rt :call RemoveTabs()<CR>
vnoremap <leader>rt <ESC>:call RemoveTabs()<CR>

" \th                 一键生成与当前编辑文件同名的HTML文件 [不输出行号]
inoremap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>
nnoremap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>
vnoremap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>

" \wa                 一键编译所有Vimwiki源文件
inoremap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>
nnoremap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>
vnoremap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>

" \ev                 编辑当前所使用的Vim配置文件
nnoremap <leader>ev <ESC>:vsplit $MYVIMRC<CR>

" \mt                 在当前目录下递归生成tags文件
nnoremap <leader>mt <ESC>:!ctags -R --languages=

" \php                一键切换到PHP语法高亮
inoremap <leader>php <ESC>:se ft=php<CR>li
nnoremap <leader>php <ESC>:se ft=php<CR>

" \js                 一键切换到JavaScript语法高亮
inoremap <leader>js <ESC>:se ft=javascript<CR>li
nnoremap <leader>js <ESC>:se ft=javascript<CR>

" \css                一键切换到CSS语法高亮
inoremap <leader>css <ESC>:se ft=css<CR>li
nnoremap <leader>css <ESC>:se ft=css<CR>

" \html               一键切换到HTML语法高亮
inoremap <leader>html <ESC>:se ft=html<CR>li
nnoremap <leader>html <ESC>:se ft=html<CR>

" }}}

" ======= 编译 && 运行 && 模板 ======= " {{{

" 编译并运行
func! Compile_Run_Code()
    exec "w"
    if &filetype == "c"
        if g:is_win
            exec "!gcc -Wall -std=c11 -o %:r %:t && %:r.exe"
        else
            exec "!clang -Wall -std=c11 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "cpp"
        if g:is_win
            exec "!g++ -Wall -std=c++11 -o %:r %:t && %:r.exe"
        else
            exec "!clang++ -Wall -std=c++11 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "d"
        if g:is_win
            exec "!dmd -wi %:t && %:r.exe"
        else
            exec "!dmd -wi %:t && ./%:r"
        endif
    elseif &filetype == "go"
        if g:is_win
            exec "!go build %:t && %:r.exe"
        else
            exec "!go build %:t && ./%:r"
        endif
    elseif &filetype == "rust"
        if g:is_win
            exec "!rustc %:t && %:r.exe"
        else
            exec "!rustc %:t && ./%:r"
        endif
    elseif &filetype == "java"
        exec "!javac %:t && java %:r"
    elseif &filetype == "groovy"
        exec "!groovy %:t"
    elseif &filetype == "scala"
        exec "!scala %:t"
    elseif &filetype == "clojure"
        exec "!clojure -i %:t"
    elseif &filetype == "cs"
        if g:is_win
            exec "!csc %:t && %:r.exe"
        else
            exec "!mono-csc %:t && ./%:r.exe"
        endif
    elseif &filetype == "fsharp"
        if g:is_win
            exec "!fsc %:t && %:r.exe"
        else
            exec "!fsharpc %:t && ./%:r.exe"
        endif
    elseif &filetype == "scheme" || &filetype == "racket"
        exec "!racket -fi %:t"
    elseif &filetype == "lisp"
        exec "!sbcl --load %:t"
    elseif &filetype == "ocaml"
        if g:is_win
            exec "!ocamlc -o %:r.exe %:t && %:r.exe"
        else
            exec "!ocamlc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "haskell"
        if g:is_win
            exec "!ghc -o %:r %:t && %:r.exe"
        else
            exec "!ghc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "lua"
        exec "!lua %:t"
    elseif &filetype == "perl"
        exec "!perl %:t"
    elseif &filetype == "php"
        exec "!php %:t"
    elseif &filetype == "python"
        exec "!python %:t"
    elseif &filetype == "ruby"
        exec "!ruby %:t"
    elseif &filetype == "elixir"
        exec "!elixir %:t"
    elseif &filetype == "julia"
        exec "!julia %:t"
    elseif &filetype == "dart"
        exec "!dart %:t"
    elseif &filetype == "haxe"
        exec "!haxe -main %:r --interp"
    elseif &filetype == "r"
        exec "!Rscript %:t"
    elseif &filetype == "coffee"
        exec "!coffee -c %:t && node %:r.js"
    elseif &filetype == "ls"
        exec "!lsc -c %:t && node %:r.js"
    elseif &filetype == "typescript"
        exec "!tsc %:t && node %:r.js"
    elseif &filetype == "javascript"
        exec "!node %:t"
    elseif &filetype == "sh"
        exec "!bash %:t"
    endif
endfunc
" }}}

" \R         一键保存、编译、运行 {{{
""inoremap <leader>r <ESC>:call Compile_Run_Code()<CR>
""nnoremap <leader>r :call Compile_Run_Code()<CR>
""vnoremap <leader>r <ESC>:call Compile_Run_Code()<CR>

inoremap <leader>m <ESC>:!make<cr>
vnoremap <leader>m <ESC>:!make<cr>
nnoremap <leader>m <ESC>:!make<cr>

inoremap <leader>mc <ESC>:!make clean<cr>
vnoremap <leader>mc <ESC>:!make clean<cr>
nnoremap <leader>mc <ESC>:!make clean<cr>



if g:is_win
  inoremap <leader>r <ESC>:!.\main.exe<cr>
  vnoremap <leader>r <ESC>:!.\main.exe<cr>
  nnoremap <leader>r <ESC>:!.\main.exe<cr>

  inoremap <leader>mr <ESC>:!.\main.exe<cr>
  vnoremap <leader>mr <ESC>:!.\main.exe<cr>
  nnoremap <leader>mr <ESC>:!.\main.exe<cr>
else
  inoremap <leader>r <ESC>:!./main<cr>
  vnoremap <leader>r <ESC>:!./main<cr>
  nnoremap <leader>r <ESC>:!./main<cr>

  inoremap <leader>mr <ESC>:!.\main.exe<cr>
  vnoremap <leader>mr <ESC>:!.\main.exe<cr>
  nnoremap <leader>mr <ESC>:!.\main.exe<cr>
endif

" function makeAndRun()
    " if g:is_win
    " else
    " endif
" endfunction


" }}}

" \T         一键加载语法模板 {{{
inoremap <leader>T <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
nnoremap <leader>T :LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
vnoremap <leader>T <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
" }}}


" ======= Vimwiki ======= " {{{

let g:vimwiki_w32_dir_enc     = 'utf-8' " 设置编码
let g:vimwiki_use_mouse       = 1       " 使用鼠标映射
let g:vimwiki_valid_html_tags = 'p,a,img,b,i,s,u,sub,sup,br,hr,div,del,code,red,center,left,right,h1,h2,h3,h4,h5,h6,pre,code,script,style'
" 声明可以在wiki里面使用的HTML标签

let blog = {}
if g:is_win
    let blog.path          = 'D:/Ruchee/Files/mysite/wiki/'
    let blog.path_html     = 'D:/Ruchee/Files/mysite/html/'
    let blog.template_path = 'D:/Ruchee/Files/mysite/templates/'
else
    let blog.path          = '~/mysite/wiki/'
    let blog.path_html     = '~/mysite/html/'
    let blog.template_path = '~/mysite/templates/'
endif
let blog.template_default = 'site'
let blog.template_ext     = '.html'
let blog.auto_export      = 1

let g:vimwiki_list = [blog]
" }}}


" learn vimscript the hard way test {{{
function! Print_helo()
  :echo "hello"
endfunction
" }}}

" supertab {{{
" the direction selection moved when pressing <tab> continously. 
" <c-p> from bottom to top; <c-n> in reverse direction.
let g:SuperTabDefaultCompletionType = "<c-p>"
" }}}

" UltiSnips Settings. {{{
""let g:UltiSnipsSnippetDirectories = ["UltiSnips", "my_ulti_snips"]
nnoremap <leader>ue :UltiSnipsEdit<cr>
let g:UltiSnipsEditSplit = "vertical"

" try to avoid conflicting with ycm"
" let g:UltiSnipsExpandTrigger = '<C-k>'
" let g:UltiSnipsJumpForwardTrigger = '<C-p>'
" let g:UltiSnipsJumpBackwardTrigger = '<C-n>'

let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" explicit tell python version."
let g:UltiSnipsUsePythonVersion = 2
if has("python3")
  let g:UltiSnipsUsePythonVersion = 3
endif

if g:is_win
  let g:UltiSnipsSnippetsDir = $VIM . '/vimfiles/UltiSnipsSnippets'
  let g:UltiSnipsSnippetDirectories = [$VIM . "/vimfiles/UltiSnipsSnippets"]
elseif g:is_mac
  let g:UltiSnipsSnippetsDir = $HOME .'/.vim/UltiSnipsSnippets/'
  let g:UltiSnipsSnippetDirectories = [$HOME . "/.vim/UltiSnipsSnippets"]
elseif g:is_unix
  " let g:UltiSnipsSnippetsDir = '/home/elloop/.vim/UltiSnips'
  " let g:UltiSnipsSnippetDirectories = ["/home/elloop/.vim/UltiSnips"]
  let g:UltiSnipsSnippetsDir = '/home/elloop/.vim/UltiSnipsSnippets/'
  let g:UltiSnipsSnippetDirectories = ["/home/elloop/.vim/UltiSnipsSnippets"]
endif
" }}}"

" YCM {{{
" avoid conflict with UltiSnips.
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"设置跳转的快捷键，可以跳转到definition和declaration  
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
nmap <leader>gd :YcmDiags<CR>

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '**'

" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'

"nmap <F4> :YcmDiags<CR>  

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic

inoremap <leader><leader> <C-x><C-o><C-p>

"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  

"开启语义补全  
let g:ycm_seed_identifiers_with_syntax = 1  

"在接受补全后不分裂出一个窗口显示接受的项  
" set completeopt-=preview  

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
" set completeopt=longest,menu

"不显示开启vim时检查ycm_extra_conf文件的信息  
" let g:ycm_confirm_extra_conf=0  
"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0  

"在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1

"在注释中也可以补全  
let g:ycm_complete_in_comments=1  

"注释和字符串中的文字也会被收入补全
let g:ycm_complete_in_strings = 1

"输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1  

"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
let g:ycm_use_ultisnips_completer=1  

" let g:ycm_filetype_blacklist = {'tex' : 1, 'markdown' : 1, 'text' : 1, 'html' : 1}
" let g:syntastic_ignore_files = [".*\.py$"] "python has its own check engine
"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"}}}"
"
"
"markdown sweet: {{{

" make current line strong"
inoremap <leader>hh <esc>I**<esc>A**<esc>
nnoremap <leader>hh <esc>I**<esc>A**<esc>
vnoremap <leader>hh <esc>I**<esc>A**<esc>


" make current lien highlight red"
inoremap <leader>hr <esc>I<font color="red"><esc>A</font><esc>
nnoremap <leader>hr <esc>I<font color="red"><esc>A</font><esc>
vnoremap <leader>hr <esc>I<font color="red"><esc>A</font><esc>

"}}}
