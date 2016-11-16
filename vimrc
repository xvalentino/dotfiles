" Lil vimrc
set background=dark 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set nocompatible
set runtimepath+=~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim " path to dein.vim
call dein#begin(expand('~/.vim/dein')) " plugins' root path
	call dein#add('Shougo/dein.vim')

	" autocomplete
	call dein#add('Shougo/deoplete.nvim',{'on_i': 1})
	call dein#add('zchee/deoplete-jedi')
	call dein#add('SirVer/ultisnips')
	call dein#add('honza/vim-snippets')

	" file search
	call dein#add('kien/ctrlp.vim')
	call dein#add('ggreer/the_silver_searcher')
	
	" misc
	call dein#add('tpope/vim-fugitive')
	call dein#add('christoomey/vim-tmux-navigator')
	call dein#add('tpope/vim-commentary')
	call dein#add('tpope/vim-sensible')
	call dein#add('tpope/vim-rails')

	" syntax
	call dein#add('pangloss/vim-javascript')
	call dein#add('vim-ruby/vim-ruby')
	call dein#add('tpope/vim-bundler')

	" colors
	call dein#add('oblitum/rainbow')
	call dein#add('altercation/vim-colors-solarized')
	call dein#add('juanedi/predawn.vim')
	call dein#add('jpo/vim-railscasts-theme')
call dein#end()

" autocomplete
let g:deoplete#enable_at_startup = 1

" search
let g:ctrlp_custom_ignore = { 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$', 'file': '\.so$\|\.dat$|\.DS_Store$' } 

" syntax
let g:jsx_ext_required = 0 

" colors
let g:rainbow_active = 1
colorscheme railscasts
