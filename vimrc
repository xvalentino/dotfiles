" set relative numbers
set nu
" so mouse can be used, and resize the panes
set mouse+=a

filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-sensible'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-endwise'
Plugin 'shougo/neocomplete.vim'
Plugin 'tpope/vim-bundler'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Raimondi/delimitMate'
Plugin 'chrisbra/Colorizer'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'fullybaked/toggle-numbers.vim'

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
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line	
"
set noswapfile
set autowrite
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set background=dark
set modifiable
set ignorecase
set cursorline
set ic
let g:neocomplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1

" trigger config for snippets
let g:IltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardtrigger="<c-k>"

"colorscheme work with tmux
set t_Co=256

:syntax on 
:colorscheme jellybeans
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
:nnoremap <space> za

inoremap jk <esc> 
inoremap kj <esc> 

" nerd tree toggle control-n
map <C-T> :NERDTreeToggle<CR>

