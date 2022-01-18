" Source
source ~/.config/nvim/vim-plug/plugins.vim

" General
autocmd VimEnter * set guicursor=a:hor20
autocmd VimLeave * set guicursor=a:hor20

lcd %:p:h

set cursorline
set encoding=utf-8
set ignorecase
set laststatus=2
set mouse=a
set number
set shiftwidth=4
set smartcase
set softtabstop=4
set tabstop=4
set termguicolors

" Theme
autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
let g:lightline = { 'colorscheme': 'one' }

colorscheme onedark

" Tab Navigation
autocmd VimEnter * tab all

nnoremap <Tab>e  :tabedit<Space>
nnoremap <Tab>c  :tabclose<CR>

nnoremap <Tab>n  :tabnext<CR>
nnoremap <Tab>p  :tabprev<CR>

nnoremap <Tab>f  :tabfirst<CR>
nnoremap <Tab>l  :tablast<CR>
nnoremap <Tab>m  :tabm<Space>
