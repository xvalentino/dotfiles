" Lil vimrc
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$'
      \ } 
set background=dark 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
Plugin 'jpo/vim-railscasts-theme'
Plugin 'tpope/vim-fugitive' 
Plugin 'ggreer/the_silver_searcher' 
Plugin 'christoomey/vim-tmux-navigator' 
Plugin 'oblitum/rainbow' 
Plugin 'gmarik/Vundle.vim' 
Plugin 'tpope/vim-commentary' 
Plugin 'tpope/vim-sensible' 
Plugin 'vim-ruby/vim-ruby' 
Plugin 'tpope/vim-rails' 
Plugin 'tpope/vim-bundler' 
Plugin 'kien/ctrlp.vim' 
Plugin 'pangloss/vim-javascript'
call vundle#end() 
let g:rainbow_active = 1
let NERDTreeQuitOnOpen=1
map <Leader>j :NERDTreeToggle<CR>
let g:jsx_ext_required = 0 
colorscheme railscasts
