so ~/.vim-bundle

set t_Co=256
set laststatus=2
colorscheme xoria256
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
let g:NERDTreeDirArrows=0
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

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

" tab nav
map <leader>[ :tabp<CR>
map <leader>] :tabn<CR>

"ctrlp
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"key mappings
nnoremap <F9> :set invpaste paste?<CR>
nnoremap <leader><BS> :!bash<CR>
nnoremap <leader>f :Flisttoggle<CR>
nmap <SPACE> i_<ESC>r
set pastetoggle=<F9>
set showmode
map <F2> :tab new<CR>
map <F3> n
map <leader>w :mksession ~/autosession.vim<CR>
map <leader>W :source ~/autosession.vim<CR>
nnoremap <leader>kb :NERDTreeTabsToggle<CR>
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
