set nocompatible "no compatible with vi
filetype off "Vundle 설정을 위한 시작부분

" for Vundle ---------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
" must use -----------------------
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'blueyed/vim-diminactive'
Plugin 'neoclide/coc.nvim'
" --------------------------------

" Color scheme -------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
" --------------------------------

filetype plugin indent on
call vundle#end()
" end of Vundle ------------------


" vim 기본설정 시작
filetype plugin indent on

colorscheme jellybeans 

if has("syntax") "syntax highlight
	syntax on
endif

set fileencodings=utf8,euc-kr "인코딩 방식이 달라도 정상출력 보장

set number
set relativenumber

set title "하단에 문서제목 표시
set ruler "하단에 커서위치 표시 

set tabstop=4 "tab 사이즈가 얼마나 보일지 
set softtabstop=4 "실질적으로 tab으로 얼마만큼의 간격을 이동할지
set shiftwidth=4 "자동 들여쓰기를 할 때의 설정값
set smarttab "ts, sts, sw을 참고하여, 탭과 백스페이스 동작 보조

set cindent
set autoindent
set smartindent

set hlsearch "highlight when search string matches
set incsearch "증가방향으로 검색
set nowrapscan "검색시 파일끝에서 되돌려 검색하지 않게
set ignorecase "대소문자 구분없이 검색 

set nowrap "자동 줄 바꿈 x

set showmatch "짝이 맞는 괄호를 하이라이트

set laststatus=2 "for vim-airline

set cursorline "현재 커서가 있는 라인을 강조
set backspace=indent,eol,start "backspace work


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Key Mapping and Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader =","

"for auto complete parenthesis and quotes
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"for NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

"for CtrlP
nnoremap <C-p> :CtrlP<CR>

" for Tagbar
nnoremap <C-t> :TagbarToggle<CR>

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" screen change
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" for blueyed/vim-diminactive
let g:diminactive_enable_focus = 1

" for CoC 
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
let g:python3_host_prog = '/opt/homebrew/bin/python3'
let g:coc_global_extensions = ['coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-pyright', 'coc-phpls', 'coc-angular', 'coc-git']
let g:coc_global_extensions += ['https://github.com/andys8/vscode-jest-snippets']

