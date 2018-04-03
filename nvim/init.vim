
call plug#begin()
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'fatih/molokai'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wincent/command-t'
Plug 'zchee/deoplete-go', { 'do': 'make'}
call plug#end()


set guicursor=
let g:rehash256 = 1
let g:molokai_original = 1
set number
colorscheme molokai
let mapleader = ","

let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'

let mapleader = ","

