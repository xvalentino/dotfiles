" Lil vimrc
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

call plug#begin('~/.vim/plugged')
        " autocomplete
	Plug 'neomake/neomake'

	" file search
	Plug 'kien/ctrlp.vim'
	Plug 'ggreer/the_silver_searcher'

	" misc
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-rails'

	" syntax
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-bundler'
	Plug 'isRuslan/vim-es6'

	" colors
	Plug 'oblitum/rainbow'
call plug#end()

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascript_flow_exe = $PWD .'/node_modules/.bin/flow'
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['eslint', 'flow']
let g:neomake_open_list = 2

" search
let g:ctrlp_custom_ignore = { 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$', 'file': '\.so$\|\.dat$|\.DS_Store$' }
:set ignorecase

" syntax
let g:jsx_ext_required = 0

" colors
let g:rainbow_active = 1
