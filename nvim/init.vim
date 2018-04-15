
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

nnoremap <leader>` :tabe ~/.config/nvim/init.vim<CR>

"We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"More natural split opening
"Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright
"Resizing splits
"Vim’s defaults are useful for changing split shapes:
"Max out the height of the current split
" ---ctrl + w _
"Max out the width of the current split
"--- ctrl + w |
"Normalize all split sizes, which is very handy when resizing terminal
"--- ctrl + w =

"More split manipulation
"Swap top/bottom or left/right split
"--- Ctrl+W R

"Break out current window into a new tabview
"--- Ctrl+W T

"Close every window in the current tabview but the current one
"--- Ctrl+W o
