set nocompatible
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

"plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/binding/vim'}

Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Vim에서 파일 탐색기를 사용할 수 있게 한다. - Nerd Tree

Plugin 'The-NERD-tree'
" Vim에서 자동완성 기능(Ctrl + P)을 키입력하지 않더라도 자동으로 나타나게 - AutoComplPop

Plugin 'AutoComplPop'
" 열려있는 소스파일의 클래스, 함수, 변수 정보 창 - Tag List

Plugin 'taglist-plus'

" NERD Tree를 왼쪽에 생성
let NERDTreeWinPos = "left"
" NERD Tree는 F7키. Tag List는 F8키에 매칭.

nmap <F7> :NERDTree<CR>
nmap <F8> :TlistToggle<CR>
filetype plugin on

" Tag list가 사용하는 ctags의 경로 설정

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0

" Tag list 창을 오른쪽으로 생성
let Tlist_Use_Right_Window = 1
let g:C_UseTool_cmake = 'yes'
let g:C_UseTool_doxygen = 'yes'

set number
set autoindent
set cindent
set smartindent
syntax on
colorscheme desert

au BufNewFile, BufRead *.c, *.cpp
	set ts=4
	set sts=4
	set sw=4

au BufNewFile, BufRead *.py
	set ts=4
	set sts=4
	set sw=4
	set textwidth=79
	set foldmethod=indent
	set foldlevel=99
	set encoding=utf-8
	" Powerline setup
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
	set laststatus=2

	let g:pymode_rope = 0
	
	" Documentation
	let g:pymode_doc = 1
	let g:pymode_doc_key = 'K'
	
	" Linting
	let g:pymode_lint = 1
	let g:pymode_lint_checker = "pyflakes,pep8"

	" Auto check on save
	let g:pymode_lint_write = 1

	" Support virtualenv
	let g:pymode_virtualenv = 1

	" Enable breakpoints plugins
	let g:pymode_breakpoint = 1
	let g:pymode_breakpoint_bing = '<leader>b'

	" Syntax highlighting
	let g:pymode_syntax = 1
	let g:pymode_syntax_all = 1
	let g:pymode_syntax_indent_errors = g:pymode_syntax_all
	let g:pymode_syntax_space_errors = g:pymode_syntax_all

	" Autofold disable
	let g:pymode_folding = 0
	
set hlsearch
set ignorecase
set mouse+=a
