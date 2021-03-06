set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable

set mouse=a
set ttymouse=xterm2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'

" Plugin 'rjohnsondev/vim-compiler-go'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Windows and Buffer Navigation
    "<f1> and <f2> for traversing buffers
    nnoremap <f1> :bp<CR>
    nnoremap <f2> :bn<CR>

    "Move aroundk open windows with jklh
    map <c-j> <c-w>j
    map <c-k> <c-w>k
    map <c-l> <c-w>l
    map <c-h> <c-w>h

"Searching ---
    "Center next search
    nnoremap n nzz
    nnoremap N Nzz

    "Use Perl regex for searching
    nnoremap / /\v
    vnoremap / /\v
    nnoremap ? ?\v
    vnoremap ? ?\v

    "Turn on highlighting for all search maches
    set hlsearch
    set incsearch

" Remap leader
let mapleader=" "

"Run :w!! to write file as root
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

"list chars
nmap <leader>1 :set list!<CR>
set list
"set listchars=tab:~\ ,eol:¬
set listchars=tab:~\ 

"Spelling
    "<f7> for spell check
    nn <f7> :setlocal spell! spelllang=en_us<CR>

hi clear SpellBad
hi SpellBad cterm=underline
set spell

"Disable ex mode
nnoremap Q <nop>

"Indent settings
"set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

"Misc key bindings
"<Esc> alterative
inoremap jj <Esc>

"<F5> to toggle paste mode (great for python copy-paste)
nnoremap <f5> :set paste!<CR>

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

set autowrite

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i  <Plug>(go-info)

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
