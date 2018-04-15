
call plug#begin()
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'fatih/molokai'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdatemmanRemotePlugins' }
Plug 'wincent/command-t'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'scrooloose/nerdtree'
call plug#end()

map - :NERDTreeToggle<CR>
map = :CommandT<CR>
let NERDTreeShowBookmarks=1

set guicursor=
let g:rehash256 = 1
let g:molokai_original = 1
set number
set mouse=a
colorscheme molokai

let mapleader = ","
let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup = 1
let g:go_def_reuse_buffer=1
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list


" reference github.com/fatih/vim-go/blob/master/doc/vim-go.txt
" leader + r to run
au FileType go nmap <leader>r <Plug>(go-run-split)

" leader + b
au FileType go nmap <leader>b <Plug>(go-build)

" leader + t
au FileType go nmap <leader>t <Plug>(go-test)

" leader + c
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <leader>f <Plug>(go-test-func)

au FileType go nmap <leader>d <Plug>(go-def-tab)

" Notese
" close a window Control + w, c
"
" close all windows except only current one, Control + w, o

" command-t - leader + t
" map leader s to save
noremap <Leader>s :update<CR>
" map leader x to quit and save
nnoremap <leader>x :xa<CR>

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" close if last key is nerdtree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

