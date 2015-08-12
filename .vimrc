so ~/.vim-bundle

set t_Co=256
set laststatus=2
colorscheme desert
syntax on
set showcmd
set backspace=2
set ruler
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ttymouse=xterm2
set mouse-=a
set fileformat=unix
let g:netrw_liststyle=3
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"line numbering, indenting, and searching
set number
set wildmode=list:longest
set smartindent
set autoindent
set splitbelow
set splitright
set hlsearch
set incsearch
command! H let @/=""
command! M set ff=unix|%s/\r//g

" window nav
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Left> <c-w>h
nmap <Right> <c-w>l
" split sizing
nmap <leader><Up> :res +5<CR>
nmap <leader><Down> :res -5<CR>
nmap <leader><Right> :vertical resize +5<CR>
nmap <leader><Left> :vertical resize +5<CR>
" cap Q = buffer Delete
command! Q :bd
command! W set ff=unix|write
command! Wq set ff=unix|write|quit
command! Wd set ff=unix|write|bdelete

" tab nav
map <leader>[ :bp<CR>
map <leader>] :bn<CR>
nnoremap <leader>{ :tabp<CR>
nnoremap <leader>} :tabn<CR>

" simple opening od explorer
map <leader>kb :Explore<CR>

"ctrlp
nnoremap <Leader>p :CtrlPBuffer<Cr>
nnoremap <Leader>P :CtrlP<Cr>
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"key mappings
nnoremap <F9> :set invpaste paste?<CR>
nnoremap <leader><BS> :!bash<CR>
nnoremap <leader>f :Flisttoggle<CR>
nmap <SPACE> i_<ESC>r
set pastetoggle=<F9>
set showmode
map <leader>n :tabnew<CR>
map <leader>v :vsp<CR>
map <leader>s :sp<CR>
nnoremap g= gg=G``
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

" windoz
if has("win32")
    cd c:\Users\derekr\sublimeWS\cdk
endif
