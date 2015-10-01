" ----------------------------------------------------------------------------
" important
" ----------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
" ----------------------------------------------------------------------------
" moving around, searching and patterns
" ----------------------------------------------------------------------------
set ignorecase " ignore case when searching
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$'
      \ } " Ignore some folders and files for CtrlP indexing
" ----------------------------------------------------------------------------
" tags
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" displaying text
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" syntax, highlighting and spelling
" ----------------------------------------------------------------------------
syntax sync minlines=256 " minlines to improve speed?
:syntax on 
set nocursorcolumn " no curosr, improves speed
set nocursorline " no curosr, improves speed
" ----------------------------------------------------------------------------
" multiple windows
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" multiple tab pages
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" terminal
" ----------------------------------------------------------------------------
let g:ruby_path = system('rvm current') " ruby path if you are using RVM
set shell=zsh\ --login " use zsh for shell
" ----------------------------------------------------------------------------
" using the mouse
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------
:set guifont=Menlo:h20 " set gui font?
set nu " set relative numbers
set t_Co=256 "colorscheme work with tmux
set background=dark " dark background
:let g:colorizer_auto_color = 1 " colors in vim
" ----------------------------------------------------------------------------
" printing
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" messages and info
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" selecting text
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" editing text
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" tabs and indenting
" ----------------------------------------------------------------------------
filetype plugin indent on
set expandtab " tab inserts spaces instead
set shiftwidth=2 " tab is 2 spaces
set softtabstop=2
set tabstop=2
" ----------------------------------------------------------------------------
" folding
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" diff mode
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" mapping
" ----------------------------------------------------------------------------
let mapleader = "\<Space>" " set leader to space
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
:nnoremap <space> za
inoremap jk <esc>
inoremap kj <esc>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" ----------------------------------------------------------------------------
" reading and writing files
" ----------------------------------------------------------------------------
set modifiable " new files modifiable
set noswapfile " doesn't save temp files?
" ----------------------------------------------------------------------------
" the swap file
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" command line editing
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" executing external commands
" ---------------------------------------------------------------------------
" 'Seeing Is Believing'
map <Leader>b : % ! sib_ruby -S seeing_is_believing --alignment-strategy chunk --number-of-captures 300 --line-length 1000 --timeout 12<CR>;
map <Leader>v : % ! sib_ruby -S seeing_is_believing --clean<CR>;
map <Leader>n : % ! sib_ruby -S seeing_is_believing --xmpfilter-style --alignment-strategy chunk --number-of-captures 300 --line-length 1000 --timeout 12<CR>;
" ---------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" running make and jumping to errors
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" language specific
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" multi-byte characters
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
" various
" ----------------------------------------------------------------------------
autocmd VimResized * :wincmd = " resize panes to respond to Tmux
" ----------------------------------------------------------------------------
" vundle
" ----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin() " begin vundle plugins
Plugin 'tpope/vim-fugitive' " I can git blame shit in vim
Plugin 'ggreer/the_silver_searcher' " search stuff or something
Plugin 'scrooloose/nerdtree' " Nerdtree
Plugin 'Shougo/neocomplete.vim' " autocomplete
Plugin 'christoomey/vim-tmux-navigator' "navagate between tmux and vim
Plugin 'pangloss/vim-javascript' " Javascript syntax highlighting
Plugin 'junegunn/seoul256.vim'
Plugin 'scrooloose/syntastic'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'dsawardekar/ember.vim' " ember syntax
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'oblitum/rainbow' " rainbow parens
Plugin 'kchmck/vim-coffee-script' " coffee script plugin
Plugin 'gmarik/Vundle.vim' " Vundle to install plugins
Plugin 'tpope/vim-commentary' " COMMENT STUFF WHOO
Plugin 'tpope/vim-sensible' " Universal Vim configs
Plugin 'vim-ruby/vim-ruby' " Ruby syntax highlighting
Plugin 'fatih/vim-go' " Go syntax highlighting
Plugin 'tpope/vim-rails' " Rails syntax and shotcuts
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-endwise' " ends created with defs, dos, ifs,
Plugin 'shougo/neocomplcache.vim' " autocomplete
Plugin 'tpope/vim-bundler' " syntax highlighting in gemfile, and cool bundle stuff
Plugin 'Raimondi/delimitMate' " autoclose quotes, parenthesis, brackets, etc.
Plugin 'thoughtbot/vim-rspec' "run rspec tests from vim
Plugin 'kien/ctrlp.vim' " navigate through files with ctrl p
Plugin 'fullybaked/toggle-numbers.vim' "ctrl-n to toggle relative and abs numbers
call vundle#end() " end vundle plugins

" -> 'Shougo/neocomplete.vim'
"     autocomplete
"     use ctrl-n to choose choice
let g:neocomplete#enable_at_startup = 1 " turn on neocomplete
let g:airline_powerline_fonts = 1

" -> 'oblitum/rainbow'
"     rainbow parenthesis
let g:rainbow_active = 1

" -> 'vim-rspec'
"     run rspec from vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" -> 'scrooloose/syntastic'
"     linter
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"Syntastic checkers
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_javascript_checkers = ['jshint']
""Error symbols
let g:syntastic_error_symbol = "💀"
let g:syntastic_style_error_symbol = "💀"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"
" -> NerdTree
let NERDTreeQuitOnOpen=1
map <Leader>j :NERDTreeToggle<CR>
" -> ctrlp
let g:ctrlp_dont_split = 'nerdtree' " after vim . ctrl-p will replace nerdtree instead of make another window
