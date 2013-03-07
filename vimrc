filetype off

call pathogen#infect()

filetype plugin indent on

syntax on
colorscheme colours

"Indentation that doesn't suck
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

function! WindowNumber()
    let str=tabpagewinnr(tabpagenr())
    return str
endfunction

"The uncool status line is back with a vengeance
set statusline=%<%F%m\ %r%h%w%=%{fugitive#statusline()}\ [%{&ff}-%Y]\ \ %l\ of\ %L
set laststatus=2

set incsearch "hilight as I search
set wildmode=longest,list "more bashy tab competion for file paths
set nofoldenable "I don't like code folding
set backspace=indent,eol,start "Let my backspace fly
set linebreak "if you're going to wrap do it right

"Make the clipboard work with OSX
set clipboard=unnamed

let mapleader=","

nnoremap <c-h> :wincmd h<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-l> :wincmd l<cr>

"Quick redraw
nnoremap <leader>r :redraw!<cr>

"Auto remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

set wildignore=*.pyc,*.jpg,*.png

"CtrlP good for opening files
nnoremap <leader>t :CtrlPMixed<cr>

"Syntastic configuration
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_javascript_gjslint_conf=" --nojsdoc"

nnoremap <leader>b :BufExplorer<cr>

set colorcolumn=80 "better version of 80 column editing

set cursorline

au BufNewFile,BufRead * match ExtraWhitespace /\s\s\+$/
match ExtraWhitespace /\s\s\+$/

"When switching between git branches tired of loading everything each time
set autoread
