set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage himself
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'c.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/unite.vim'
"Plugin 'suoto/vim-hdl'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
"Plugin 'valloric/youcompleteme'

call vundle#end()

syntax on
colorscheme desert

set background=dark
set number

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch " Show matching paranthesis

filetype plugin on
filetype indent on

set mouse=nicr

set autoread
" Highlight search results
set hlsearch
set incsearch

" Syntastic
set statusline +=%#warningmsg#
set statusline +=%{SyntasticStatuslineFlag()}
set statusline +=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Nerdtree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp', '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

" Show List
nnoremap <silent> <F4> :TlistToggle<CR>

"Tagbar
nmap <silent> <F8> :TagbarToggle<CR>

" Airline
let g:airline_powerline_fonts = 0
set laststatus=2
let g:airline_theme = 'molokai'
let g:airline#extensions#syntastic#enabled = 1
"set lazyredraw

