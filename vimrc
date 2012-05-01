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
set statusline=%{WindowNumber()}%m:\ %<%F\ %r%h%w%=%{fugitive#statusline()}\ [%{&ff}-%Y]\ \ %l,%v\ -\ %p%%\ of\ %L
set laststatus=2

set incsearch "hilight as I search
set wildmode=longest,list "more bashy tab competion for file paths
set nofoldenable "I don't like code folding
set backspace=indent,eol,start "Let my backspace fly
set linebreak "if you're going to wrap do it right

"Make the clipboard work with OSX
set clipboard=unnamed

let mapleader=","

"Window switching
nnoremap <leader>1 :1 wincmd w<cr>
nnoremap <leader>2 :2 wincmd w<cr>
nnoremap <leader>3 :3 wincmd w<cr>
nnoremap <leader>4 :4 wincmd w<cr>

nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

"Map Ack to search the word under the cursor
nnoremap <leader>a :Ack <cword><cr>

"Auto remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

set wildignore=*.pyc,*.jpg,*.png

"Command T good for opening files
nnoremap <leader>t :CtrlPMixed<cr>
nnoremap <leader>f :CtrlPClearCache<cr>
let g:CommandTMaxHeight=20

set colorcolumn=80 "better version of 80 column editing
highlight ColorColumn guibg=#592929 ctermbg=52

set cursorline

highlight ExtraWhitespace guibg=#292959 ctermbg=17
au BufNewFile,BufRead * match ExtraWhitespace /\s\s\+$/
match ExtraWhitespace /\s\s\+$/


