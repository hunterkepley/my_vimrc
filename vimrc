set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" gitgutter
Plugin 'airblade/vim-gitgutter'

" vim-racer
Plugin 'racer-rust/vim-racer'

" nerdtree
Plugin 'scrooloose/nerdtree'

" ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

" ale
Plugin 'w0rp/ale'

" colorscheme
Plugin 'flazz/vim-colorschemes'

" rust.vim
Plugin 'rust-lang/rust.vim'

" YCM
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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
syntax on
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>

" Use all of racer
let g:racer_experimental_completer = 1
set hidden
let g:racer_cmd = "/home/user/.cargo/bin/racer"
let $RUST_SRC_PATH="/usr/local/src/rustc/src"

" Better searching
set incsearch
set ignorecase
set smartcase
set wrapscan "wraps around end of file
" Redraw screen and clear highlighting
nnoremap <Leader>r :nohl<CR><C-L>

" Ale syntax checking
let g:ale_rust_cargo_use_check = 1
" use Ctrl-k and Ctrl-j to jump up and down between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

colorscheme seoul256-light 
set tabstop=4
