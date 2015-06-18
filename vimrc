" set leader to space
let mapleader = "\<Space>"
set shell=zsh\ --login

"Set the guifont
:set guifont=Menlo:h20

set cursorline    " enable the horizontal line
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE

" set relative numbers
set nu

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
Plugin 'junegunn/seoul256.vim'
Plugin 'scrooloose/syntastic'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'dsawardekar/ember.vim' " ember syntax
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'oblitum/rainbow' " rainbow parens
Plugin 'kchmck/vim-coffee-script' " coffee script plugin
Plugin 'gmarik/Vundle.vim' " Vundle to install plugins
Plugin 'godlygeek/tabular' " indent shit
Plugin 'tpope/vim-commentary' " COMMENT STUFF WHOO
Plugin 'tpope/vim-sensible' " Universal Vim configs
Plugin 'jelera/vim-javascript-syntax' " Javascript syntax highlighting
Plugin 'vim-ruby/vim-ruby' " Ruby syntax highlighting
Plugin 'fatih/vim-go' " Go syntax highlighting
Plugin 'tpope/vim-rails' " Rails syntax and shotcuts
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-endwise' " ends created with defs, dos, ifs,
Plugin 'shougo/neocomplcache.vim' " autocomplete
Plugin 'tpope/vim-bundler' " syntax highlighting in gemfile, and cool bundle stuff
Plugin 'Raimondi/delimitMate' " autoclose quotes, parenthesis, brackets, etc.
Plugin 'thoughtbot/vim-rspec' "run rspec tests from vim
Plugin 'kien/ctrlp.vim' " navigate through files with ctrl p
Plugin 'fullybaked/toggle-numbers.vim' "ctrl-n to toggle relative and abs numbers

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
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
:nnoremap <space> za

inoremap jk <esc> 
inoremap kj <esc> 

" rspec vim keymappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" tabular keymapping
if exists(":Tabularize")
  nmap <Leader>f= :Tabularize /=<CR>
  vmap <Leader>f= :Tabularize /=<CR>
  nmap <Leader>f: :Tabularize /:\zs<CR>
  vmap <Leader>f: :Tabularize /:\zs<CR>
endif

" colors in vim
:let g:colorizer_auto_color = 1

" rainbow parens
let g:rainbow_active = 1

" rspec in vim :)
nnoremap <Leader>s :call RunNearestSpec()<CR>

" Seeing Is Believing
map <Leader>b : % ! sib_ruby -S seeing_is_believing --alignment-strategy chunk --number-of-captures 300 --line-length 1000 --timeout 12<CR>;
map <Leader>v : % ! sib_ruby -S seeing_is_believing --clean<CR>;
map <Leader>n : % ! sib_ruby -S seeing_is_believing --xmpfilter-style --alignment-strategy chunk --number-of-captures 300 --line-length 1000 --timeout 12<CR>;

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Error symbols for syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"
