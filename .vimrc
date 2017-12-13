" author: 	elloop
" date:		2017/12/13

func! SetOsInfo()
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
endfunc

call SetOsInfo()

if g:is_win
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
""Plugin 'mattn/emmet-vim'
"Plugin 'yianwillis/vimcdoc'
"Plugin 'Valloric/YouCompleteMe'
""Plugin 'Yggdroot/LeaderF'
""Plugin 'vim-scripts/a.vim'
""Plugin 'mbbill/undotree'
""Plugin 'skywind3000/asyncrun.vim'
"Plugin 'xxxxx/FencView.vim'



call vundle#end()


if has("gui_running")
    let g:is_gui = 1
else
    let g:is_gui = 0 
endif

if g:is_win
  if g:is_gui
    set background=dark
  endif
  colorscheme solarized
  set guifont=Consolas:h14
elseif g:is_unix && g:is_mac == 0
  "pure unix"
  if g:is_gui
    set background=dark
    colorscheme solarized
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


if g:is_gui
    if g:is_win
        autocmd GUIEnter * simalt ~x
    endif
    "winpos 20 20            
    "set lines=20 columns=90 
    set guioptions+=c        
    set guioptions-=m        
    set guioptions-=T        
    set guioptions-=L        
    set guioptions-=r        
    set guioptions-=b        
    set showtabline=0        
endif



" basic setting {{{

filetype off              

set number
set relativenumber
set shiftwidth=4
set tabstop=4
set backspace=2              
set autoindent               
set smartindent              
set relativenumber         
set number                   
set mouse=a                  
set ruler                    
set incsearch                
set hlsearch                 
"set nowrapscan             
set ignorecase               
set nocompatible             
set hidden                   
set autochdir                
set foldmethod=indent        
set foldlevel=100            
set laststatus=2             
set cmdheight=1              
set autoread                 
set nobackup                 
set noswapfile               
"set list                   
set listchars=tab:\~\ ,trail:.
set expandtab                
set showmatch               
"set nowrap    
set virtualedit=onemore     " allow for cursor beyond last character
set history=1000            " store a ton of history (default is 20)
set cursorline
" set cursorcolumn          " cancel highlight column

" following will not stop the bell!
"set nowrap                  " 设置不自动换行
" set t_vb=                        "禁止终端响铃
" set bell-style none
" set belloff "all"
" set novisualbell
" set noerrorbells

" this two lines stop the ring bell"
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

syntax enable                
syntax on                    
filetype indent on           
filetype plugin on           
filetype plugin indent on

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

let python_highlight_all = 1

augroup filetype_markdown
    autocmd!
    "go to header"
    autocmd FileType mkd :onoremap <buffer> ih :<c-u>execute "normal! ?^[\-=]\\+$\r:nohlsearch\rkvg_"<cr>  
augroup END

augroup filetype_vimscript
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" basic setting }}}


" plugin settings {{{

" BufExplorer {{{
let g:bufExplorerSortBy = 'name'               
" }}}


" Tlist {{{
let Tlist_Show_One_File        = 1
let Tlist_Exit_OnlyWindow      = 1
let Tlist_Use_Right_Window     = 1
let Tlist_File_Fold_Auto_Close = 1
" }}}

" NERD_commenter      
let NERDSpaceDelims = 1                        

" Indent_guides {{{
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size            = 1
" }}}

" AirLine {{{
let g:airline_theme = 'behelit'
" }}}

" Syntastic {{{
let g:syntastic_check_on_open = 0
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  [],
            \'passive_filetypes': ['c', 'cpp', 'h', 'html', 'css', 'xhtml', 'groovy', 'scala', 'clojure', 'racket', 'eruby', 'slim', 'jade', 'scss', 'less']
            \}
" }}}

" {{{
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_c_compiler_options = '-std=c11'
let g:syntastic_cpp_compiler_options = '-std=c++11'
" }}}

" supertab {{{
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
  let g:UltiSnipsSnippetsDir = $HOME .'/.vim/UltiSnipsSnippets/'
  let g:UltiSnipsSnippetDirectories = [$HOME . "/.vim/UltiSnipsSnippets"]
endif
" }}}"

" YCM {{{
" avoid conflict with UltiSnips.
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
nmap <leader>gd :YcmDiags<CR>

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '**'

let g:ycm_key_invoke_completion = '<M-;>'

"nmap <F4> :YcmDiags<CR>

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

inoremap <leader><leader> <C-x><C-o><C-p>

let g:ycm_collect_identifiers_from_tags_files = 1  


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


" plugin settings }}}


" key bindings {{{

let mapleader = ","

nnoremap <leader>rr :!
inoremap xc <esc>

inoremap <leader>s <esc>:w<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>sa :wa<cr>
nnoremap <leader>sq :wq<cr>
nnoremap <leader>x :close<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>fqa :qa!<CR>
nnoremap <leader>fq :q!<CR>

nnoremap <leader>ev <ESC>:vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>vs :vsplit 
nnoremap <leader>hs :split 

inoremap <c-cr> <esc>o

inoremap <c-h> <ESC>I
map <c-h> <c-w><c-h>

inoremap <c-j> <ESC><Down>I
map <c-j> <c-w><c-j>

inoremap <c-k> <ESC><Up>A
map <c-k> <c-w><c-k>

inoremap <c-l> <ESC>A
map <c-l> <c-w><c-l>

inoremap <m-h> <Left>
inoremap <m-j> <Down>
inoremap <m-k> <Up>
inoremap <m-l> <Right>

vnoremap <leader>c "+y
inoremap <leader>v <ESC>"+pa
nnoremap <leader>v "+p
vnoremap <leader>v "+p
nnoremap <leader>a <ESC>ggVG"+y<ESC>

nnoremap <leader>bb :Tab /=<CR>

nnoremap <leader>16 <ESC>:%!xxd<ESC>
nnoremap <leader>r16 <ESC>:%!xxd -r<ESC>

nnoremap <leader>tb :Tab /
vnoremap <leader>tb :Tab /

nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>tl :Tlist<CR><c-w><c-l>
nnoremap <leader>ff :CtrlP<CR>
nnoremap <leader>ud :UndotreeToggle<CR>
nnoremap <leader>fe :FencView<CR>

inoremap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <leader>rb :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
vnoremap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

inoremap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>
nnoremap <leader>rm :%s/<c-v><c-m>//g<CR>
vnoremap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>

inoremap <leader>rt <ESC>:call RemoveTabs()<CR>
nnoremap <leader>rt :call RemoveTabs()<CR>
vnoremap <leader>rt <ESC>:call RemoveTabs()<CR>

inoremap <leader>m <ESC>:!make<cr>
vnoremap <leader>m <ESC>:!make<cr>
nnoremap <leader>m <ESC>:!make<cr>

inoremap <leader>mc <ESC>:!make clean<cr>
vnoremap <leader>mc <ESC>:!make clean<cr>
nnoremap <leader>mc <ESC>:!make clean<cr>

" make current line strong"
inoremap <leader>hh <esc>I**<esc>A**<esc>
nnoremap <leader>hh <esc>I**<esc>A**<esc>
vnoremap <leader>hh <esc>I**<esc>A**<esc>

" make current lien highlight red"
inoremap <leader>hr <esc>I<font color="red"><esc>A</font><esc>
nnoremap <leader>hr <esc>I<font color="red"><esc>A</font><esc>
vnoremap <leader>hr <esc>I<font color="red"><esc>A</font><esc>

" suround with `"
inoremap <leader>hq <esc>bi`<esc>wi`<esc>
nnoremap <leader>hq <esc>bi`<esc>wi`<esc>
vnoremap <leader>hq <esc>bi`<esc>wi`<esc>


"surround selected content with Double Quote"
:vnoremap <leader>dq <esc>`<i"<esc>`>a"<esc>

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i

nnoremap <leader>nn :tabnext<cr>
inoremap <leader>nn :tabnext<cr>
nnoremap <leader>pp :tabprevious<cr>
inoremap <leader>pp :tabprevious<cr>
nnoremap <leader>tt :tabnew<cr>
inoremap <leader>tt :tabnew<cr>

""inoremap <leader>ch :call RunWithChrome(expand('%:p'))<CR>
""nnoremap <leader>ch <esc>:call RunWithChrome(expand('%:p'))<CR>

inoremap <leader>ch <esc>:AsyncRun "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --allow-file-access-from-files $VIM_FILEDIR/$VIM_FILENOEXT.html
nnoremap <leader>ch :AsyncRun "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --new-window --allow-file-access-from-files $VIM_FILEDIR/$VIM_FILENOEXT.html


" key bindings }}}

" util functions {{{

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

function! ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction


function! RunWithChrome(name) 

python << EOF

import vim
import os
import subprocess

file_name  = vim.eval("a:name")

# js -> html
if file_name.endswith(".js"):
    file_name = file_name.rsplit('.', 1)[0] + ".html"

chrome_bin = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
cmd        = '"{chrome}" --allow-file-access-from-files {name}'.format(chrome=chrome_bin, name=file_name)

print("cmd:{}".format(cmd))
os.system(cmd)

EOF
endfunction


" util functions }}}

