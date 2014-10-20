so ~/.vim-bundle

set t_Co=256
set laststatus=2
set splitright
colorscheme desert
syntax on
set showcmd
set backspace=2
set ruler
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ttymouse=xterm2
set mouse-=a
let g:netrw_liststyle=3

"line numbering, indenting, and searching
set number
set wildmode=list:longest
set smartindent
set autoindent
set splitbelow
set hlsearch
set incsearch
command! H let @/=""

" window nav
nmap <leader>h <c-w>h
nmap <leader>j <c-w>j
nmap <leader>k <c-w>k
nmap <leader>l <c-w>l
nmap <leader>= <c-w>=

" tab nav
map <leader>H :tabp<CR>
map <leader>L :tabn<CR>

"key mappings
nnoremap <F9> :set invpaste paste?<CR>
nnoremap <leader><BS> :!bash<CR>
nnoremap <leader>f :Flisttoggle<CR>
set pastetoggle=<F9>
set showmode
map <leader>w :mksession ~/autosession.vim<CR>
map <leader>W :source ~/autosession.vim<CR>
nnoremap <leader>\ :Explore<CR>
vnoremap <c-c> "*y

"I'm tired of restarting vim or typing :so, so this auto sources the .vimrc file when edited
if has("autocmd")
	autocmd bufwritepost .vimrc source ~/.vimrc
endif

"toggle mouse mode
nnoremap <F12> :call ToggleMouse()<CR>
function! ToggleMouse()
	if &mouse == 'a'
		set mouse-=a
		echo "No Mouse"
	else
		set mouse=a
		echo "Mouse!"
	endif
endfunction
