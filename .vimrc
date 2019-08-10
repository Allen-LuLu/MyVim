set nu
ab mymail Email:962729318@qq.com
map <special> <C-P> I#<ESC>
map <special> <C-L> I//<ESC>
set ts=4

call plug#begin('~/.vim/plugged')

" 下面的我安装的插件



Plug 'Valloric/YouCompleteMe', {'on': [], 'do': './install.py --clang-complete --go-complete --system-libclang --java-complete'}


 Plug '~/.vim/plugged/YouCompleteMe'

 Plug '/usr/share/vim/vimfiles/autoload/youcompleteme.vim', {'on': []}

Plug 'rdnetto/YCM-Generator', {'branch':'stable'}

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

Plug 'ryanoasis/vim-devicons',

	 Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}

	 " Tab缩进线

	 Plug 'Yggdroot/indentLine'

	 Plug 'jiangmiao/auto-pairs'

	 " 语法检查

	 Plug 'w0rp/ale', {'for': ['cpp', 'c', 'python']}

	 Plug 'ntpeters/vim-better-whitespace'

	 Plug 'iamcco/markdown-preview.vim', {'for': 'markdown'}

	 Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}

	 Plug 'sgur/vim-lazygutter'

	 Plug 'SirVer/ultisnips'

	 Plug 'fisadev/vim-isort', {'on': 'Isort'}

	 Plug 'itchyny/lightline.vim'

	 Plug 'scrooloose/nerdcommenter', {'on': '<plug>ERDCommenterToggle'}

	 Plug 'tpope/vim-surround'

	 Plug 'ryanoasis/vim-devicons'

	 Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}

	 Plug 'tpope/vim-sensible'

	 Plug 'rhysd/clever-f.vim'

	 Plug 'honza/vim-snippets'

	 Plug 'vim-scripts/stlrefvim'

	 Plug 'Mizuchi/STL-Syntax', {'for': 'cpp'}



	 " find & search & move

	 Plug 'Yggdroot/LeaderF', {'on': ['LeaderfFile', 'LeaderfFunction']}

	 Plug 'easymotion/vim-easymotion', {'on': ['<Plug>(easymotion-bd-w)', '<Plug>(easymotion-bd-jk)']}


" syntax highlight

Plug 'Glench/Vim-Jinja2-Syntax', {'for': 'html'}

" 暂时不用这个主题

" Plug 'liuchengxu/space-vim-dark'

Plug 'vim-python/python-syntax', {'for': 'python'}

Plug 'PotatoesMaster/i3-vim-syntax', {'for': 'i3'}

Plug 'posva/vim-vue', {'for': 'vue'}

Plug 'luochen1990/rainbow'









Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'tomtom/tlib_vim'

Plug 'garbas/vim-snipmate'

" 管理tab

Plug 'ervandew/supertab'

" 语法补全

Plug 'honza/vim-snippets', {'on':[]}



call plug#end()

"插件末尾

" 延时加载语法补全

augroup load_snippets

  autocmd!

  autocmd InsertEnter * call plug#load('vim-snippets') | autocmd! load_snippets

augroup END



 "设置YCM延时加载

"augroup load_ycm

 " autocmd!

  "autocmd InsertEnter * call source '/usr/share/vim/vimfiles/autoload/youcompleteme.vim' | autocmd! load_ycm

"augroup END



" python-syntax

let g:python_highlight_all = 1



" lazy load plugins

 "autocmd! InsertEnter * call Init()

 "let g:lazy_load = 0

 "function! Init()

  " if g:lazy_load == 0

     "let g:lazy_load = 1

     "call plug#load('YouCompleteMe')

  " endif

 "endfunction


"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

set runtimepath+=~/.vim/plugged/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>','<Down>']
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |
let g:ycm_min_num_of_chars_for_completion = 2


let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0


" vim setting

set ttyfast
set scrolloff=7            " 滚动的时候有7行多余

set updatetime=100         " update time


set lazyredraw             " lazy draw

set nofoldenable           " 禁用折叠"

set nocompatible           " 去除vi 和vim 的一致性

filetype plugin indent on  " 开启类型检查

syntax on                  " 开启语法高粱

set autoindent             " 自动缩进

set cindent                " C语言的缩进格式

set smartindent            " 当遇到右花括号（}），则取消缩进形式

set shiftround

set ruler                  " 底部的行号等显示

set novisualbell           " 去掉输入错误的提示声音

" 关于tab和space的一些setting

set softtabstop=2          " 逢2空格进1制表符

set expandtab              " expandtab，输入一个tab，将被展开成softtabstop值个空格，如果softtabstop=4，那么一个tab就会被替换成4个空格

set tabstop=2              " 定义tab所等同的空格长度

set shiftwidth=2           " 程序中自动缩进所使用的空白长度指示的

set t_md=                  " 禁用粗体

set t_Co=256               " 开启256色

" file type setting

set fileformat=unix        " filetype 文件格式主要区别在于Windows和Unix的换行符不同

set encoding=utf-8         " 编码utf-8

set cmdheight=1            " vim命令模式下的命令行高度，最下方命令行

set noswapfile             " 禁止生产交换文件

set relativenumber         " 相对模式的行号

" set norelativenumber       " 行号为不是相对模式

set ignorecase             " 忽略大小写

set shortmess=I            " 不显示vim版本信息

set noshowmode             " 在底部命令行不显示当前模式


set timeoutlen=300        " 设置leader键延迟为300ms

set splitbelow

set splitright

set showcmd

set hidden


set hlsearch

" ctags setting

set tags=./tags
