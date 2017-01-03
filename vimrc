" Lil vimrc
set background=dark
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set nocompatible

call plug#begin('~/.vim/plugged')
	" autocomplete
	Plug 'Shougo/deoplete.nvim'
	Plug 'zchee/deoplete-jedi'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'

	" file search
	Plug 'kien/ctrlp.vim'
	Plug 'ggreer/the_silver_searcher'

	" misc
	Plug 'tpope/vim-fugitive'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-rails'

	" syntax
	Plug 'pangloss/vim-javascript'
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-bundler'

	" colors
	Plug 'oblitum/rainbow'
	Plug 'altercation/vim-colors-solarized'
	Plug 'juanedi/predawn.vim'
	Plug 'jpo/vim-railscasts-theme'
call plug#end()

" autocomplete
let g:deoplete#enable_at_startup = 1

" search
let g:ctrlp_custom_ignore = { 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$', 'file': '\.so$\|\.dat$|\.DS_Store$' }

" syntax
let g:jsx_ext_required = 0

" colors
let g:rainbow_active = 1
colorscheme railscasts
