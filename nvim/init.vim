
call plug#begin()
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'fatih/molokai'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdatemmanRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'avakhov/vim-yaml'
call plug#end()
let g:loaded_ruby_provider = 1
map - :NERDTreeToggle<CR>
map = :FZF<CR>
let NERDTreeShowBookmarks=1
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let g:loaded_ruby_provider = 1
set guicursor=
set cursorline
let g:rehash256 = 1
let g:molokai_original = 1
set number
set mouse=a
colorscheme molokai

" auto start nerdtree 
"au VimEnter *  NERDTree
let g:go_test_show_name = 1

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
"map <C-n> :cnext<CR>
"map <C-m> :cprevious<CR>

let mapleader = ","
let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup = 1
"let g:go_def_reuse_buffer=1
"let g:go_term_enabled=1
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

let g:go_term_mode="split"

let g:go_auto_type_info = 1

" reference github.com/fatih/vim-go/blob/master/doc/vim-go.txt
" leader + r to run
au FileType go nmap <leader>r <Plug>(go-run-split)
" leader + b
au FileType go nmap <leader>b <Plug>(go-build)
" leader + t
au FileType go nmap <leader>t <Plug>(go-test)
" leader + c
au FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>f <Plug>(go-test-func)
au FileType go nmap <leader>d <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
" switch test file
au FileType go nmap <leader>1 :GoAlternate<cr>
au FileType go nmap <Leader>2 <Plug>(go-alternate-vertical)
" show all functions and types in current file
au FileType go nmap <leader>3 :GoDecls<cr>
" show all functions and types in current dir
au FileType go nmap <leader>4 :GoDeclsDir<cr>

au FileType go nmap <leader>0 :tabe<cr>

  " :GoAlternate  commands :A, :AV, :AS and :AT
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" Notes
" close a window Control + w, c
"
" close all windows except only current one, Control + w, o

" command-t - leader + t
" map leader s to save
noremap <Leader>s :update<CR>
" map leader x to quit and save
nnoremap <leader>x :xa<CR>
nnoremap <leader>q :x<CR>

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

nnoremap <leader>` :tabe ~/.config/nvim/init.vim<CR>

"We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" if nerdtree is the last window
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


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
