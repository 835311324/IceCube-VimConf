"==============================================================================
"" vim 内置配置 
"==============================================================================
"
" 设置 vimrc 修改保存后立刻生效，不用在重新打开
" 建议配置完成后将这个关闭
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 关闭兼容模式
set nocompatible
" 设置行号
set nu
"突出显示当前行
set cursorline
" 突出显示当前列
" set cursorcolumn
" 显示括号匹配
set showmatch 
" 没有下面的配置删除不到上一行
set backspace=2
" tab 缩进相关
" 设置Tab长度为4空格
set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4 softtabstop=4 expandtab
" 继承前一行的缩进方式，适用于多行注释
" set autoindent 
" 定义快捷键的前缀，即<Leader> 默认为\
let mapleader=";" 
" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
" 开启文件类型侦测
syntax on
" 启用自动补全
filetype plugin indent on
"显示隐藏字符 ^I表示tab键 $表示行尾
set list 
" 折叠相关配置
" set foldmethod=indent " 缩进方式折叠 za折叠  zo展开
"==============================================================================
"" vundle 配置
"==============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 用来提供一个导航目录的侧边栏
Plugin 'scrooloose/nerdtree'

" 查看git状态
Plugin 'tpope/vim-fugitive'

"可以快速对齐的插件
Plugin 'junegunn/vim-easy-align'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plugin 'jiangmiao/auto-pairs'

" 文件搜索
Plugin 'ctrlpvim/ctrlp.vim'
" 函数搜索
Plugin 'tacahiroy/ctrlp-funky'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plugin 'vim-airline/vim-airline'

" vim增强
Plugin 'Lokaltog/vim-powerline'

" 配色方案
Plugin 'crusoexia/vim-monokai'
Plugin 'acarapetis/vim-colors-github'
Plugin 'rakr/vim-one'
Plugin 'morhetz/gruvbox'  

" 注释用的插件
Plugin 'scrooloose/nerdcommenter'

" 可以在 vim 中使用 tab 补全
Plugin 'vim-scripts/SuperTab'"

" vim go插件
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required


"==============================================================================
"" easealign 配置
"==============================================================================

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"

" 输入ga进入easyalign模式
" enter 键切换对齐模式
" *| 表示|对齐，  *# 表示#对齐

"==============================================================================
"" 主题配色 
"==============================================================================
"
set t_Co=256
" 配色方案, 可以从上面插件安装中的选择一个使用 
colorscheme gruvbox " 主题
set background=dark" 主题背景 dark-深色; light-浅色

"==============================================================================
"" NERDTree 插件
"==============================================================================
"
"" 打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
" " 打开文件时是否显示目录
let NERDTreeAutoCenter=1
" " 是否显示隐藏文件
let NERDTreeShowHidden=1
" " 设置宽度
let NERDTreeWinSize=31
" " 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" " 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2
"
" 在终端启动vim时，共享NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1
" ?: 快速帮助文档
" o: 打开一个目录或者打开文件，创建的是buffer，也可以用来打开书签
" go: 打开一个文件，但是光标仍然留在NERDTree，创建的是buffer
" t: 打开一个文件，创建的是Tab，对书签同样生效
" T: 打开一个文件，但是光标仍然留在NERDTree，创建的是Tab，对书签同样生效
" i: 水平分割创建文件的窗口，创建的是buffer
" gi: 水平分割创建文件的窗口，但是光标仍然留在NERDTree
" s: 垂直分割创建文件的窗口，创建的是buffer
" gs: 和gi，go类似
" x: 收起当前打开的目录
" X: 收起所有打开的目录
" e: 以文件管理的方式打开选中的目录
" D: 删除书签
" P: 大写，跳转到当前根路径
" p: 小写，跳转到光标所在的上一级路径
" K: 跳转到第一个子路径
" J: 跳转到最后一个子路径
" <C-j>和<C-k>: 在同级目录和文件间移动，忽略子目录和子文件
" C: 将根路径设置为光标所在的目录
" u: 设置上级目录为根路径
" U: 设置上级目录为跟路径，但是维持原来目录打开的状态
" r: 刷新光标所在的目录
" R: 刷新当前根路径
" I: 显示或者不显示隐藏文件
" f: 打开和关闭文件过滤器
" q: 关闭NERDTree
" A: 全屏显示NERDTree，或者关闭全屏

"==============================================================================
"" "vim-airline/vim-airline
"==============================================================================

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
 
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '!'


"==============================================================================
"  vim powerline 配置
"==============================================================================
let g:Powerline_symbols = 'fancy'
set encoding=utf-8 
set laststatus=2
"
"==============================================================================
"   vim-fugitive配置
"==============================================================================

":Gstatus调出git status查看当前状态；
" -添加或删除文件；
" p为当前文件运行git add -patch；
" Gcommit提交当前文件，编辑提交当前运行的Vim的内部消息，完了以后输入命令Gwrite保存提交；
" :Gblame带来git blame 输出的交互式垂直分割。按行上的Enter键以编辑行更改的提交，或者o在拆分中打开它；
" :Gedit 历史缓冲区返回工作树版本；
" :Gmove做了git mv一个文件，同时重命名的缓冲区；
" :Gdelete做了git rm一个文件，同时删除该缓冲区；
" :Gread是git checkout -- filename缓冲区而不是文件名的变体


" "==============================================================================
" " tacahiroy/ctrlp-funky    'ctrlpvim/ctrlp.vim'
" "==============================================================================

let g:ctrlp_map = '<c-p>'  " Ctrl+c+p
let g:ctrlp_cmd = 'CtrlP'

" ctrl + j/k 进行上下选择
" ctrl + x 在当前窗口水平分屏打开文件
" ctrl + v 同上, 垂直分屏
" ctrl + t 在tab中打开
" fu 进入当前文件的函数列表搜索
" fU 搜索当前光标下单词对应的函数
"
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>


" "==============================================================================
" "scrooloose/nerdcommenter 配置
" "==============================================================================
" 注释的时候自动加一个空格
" " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
filetype plugin on
" 行模式注释 <leader>c<space>
" 单行注释 <leader>cc
" 取消注释 <leader>cu
"
" "==============================================================================
" "vim-go 配置
" "==============================================================================
"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

" 编译包
" :GoBuild
" 安装包
" :GoInstall
" 测试包
" :GoTest
" 测试函数
" :GoTestFunc
" 快速执行当前文件
" :GoRun
" delve支持
" :GoDebugStart
" 声明
" :GoDef 
" 查找文档
" :GoDoc / :GoDocBrowser
" 加载/移除包
" :GoImport / GoDrop
" type-safe renaming
" :GoRename
" 查看test覆盖率
" :GoCoverage.
" 增加/移除 tags
" :GoAddTags / :GoRemoveTags
" Call golangci-lint with :GoMetaLinter to invoke all possible linters (golint, vet, errcheck, deadcode, etc.) and put the result in the quickfix or location list.
" Lint your code with :GoLint, run your code through :GoVet to catch static errors, or make sure errors are checked with :GoErrCheck.
" ... and many more! Please see doc/vim-go.txt for more information.
