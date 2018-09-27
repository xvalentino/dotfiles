" Lil vimrc
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

:set expandtab   
:set shiftwidth=2
:set autoindent    
:set smartindent  
:set cindent   

call plug#begin('~/.vim/plugged')
	" file search
	Plug 'kien/ctrlp.vim'
	Plug 'ggreer/the_silver_searcher'

	" misc
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-sensible'

	" syntax
	Plug 'tpope/vim-bundler'
	Plug 'pangloss/vim-javascript'
	Plug 'isRuslan/vim-es6'
	Plug 'tpope/vim-fireplace'
        Plug 'prettier/vim-prettier', {
          \ 'do': 'yarn install',
          \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

	" colors
	Plug 'oblitum/rainbow'
call plug#end()

" search
let g:ctrlp_custom_ignore = { 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$', 'file': '\.so$\|\.dat$|\.DS_Store$' }
:set ignorecase

" syntax
let g:jsx_ext_required = 0

" colors
let g:rainbow_active = 1
