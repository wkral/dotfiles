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

" branch: 🜉 ᚶ
" up arrow: ↑ down arrow: ↓
" Line numbers: ↓23→23
"The uncool status line is back with a vengeance
set laststatus=2
let g:lightline = {
\  'active': {
\    'left': [
\       ['mode', 'paste'],
\       ['gitbranch'],
\       ['filename']
\    ]
\  },
\  'subseparator': {
\    'left': ''
\  },
\  'component': {
\    'mode': '%{strpart(lightline#mode(), 0, 1)}',
\    'lineinfo': '↓%-3l→%-2v',
\  },
\  'component_function': {
\    'gitbranch': 'GitBranchStats',
\    'filename': 'LightlineFilename'
\  }
\}

function! LightlineFilename()
  let filename = expand('%:f') !=# '' ? expand('%:f') : '[No Name]'
  let modified = &modified ? ' +' : ''
  let readonly = &readonly ? ' 🔒' : ''
  return filename . modified . readonly
endfunction

function! GitBranchStats()
    let branch = fugitive#head()
    if branch == ''
        return ''
    endif

    let changes = GitGutterGetHunkSummary()
    let change_val = or(changes[0] > 0 ? 0b100 : 0,
                     \  or(changes[1] > 0 ? 0b010 : 0,
                     \     changes[2] > 0 ? 0b001 : 0))

    let char_map = ['', ' -', ' ~', ' ≃', ' +', ' ±', ' +̃', ' ±̃']

    return 'ᚶ ' . branch . char_map[change_val]
endfunction

set incsearch "hilight as I search
set wildmode=longest,list "more bashy tab competion for file paths
set nofoldenable "I don't like code folding
set backspace=indent,eol,start "Let my backspace fly
set linebreak "if you're going to wrap do it right

"Make the clipboard work with OSX
set clipboard=unnamed

let mapleader=","

nnoremap <silent> <c-h> :wincmd h<cr>
nnoremap <silent> <c-j> :wincmd j<cr>
nnoremap <silent> <c-k> :wincmd k<cr>
nnoremap <silent> <c-l> :wincmd l<cr>

"Quick redraw
nnoremap <leader>r :redraw!<cr>

"Auto remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

set wildignore=*/tmp/*,*/log/*,*.pyc,*.jpg,*.png,node_modules,*.class,*.jar

let g:polyglot_disabled = ['yaml']

if executable('rg')
  " Use ripgrep over Grep
  set grepprg=rg\ --vimgrep
endif

if executable('fzf')
  "Fzf good for opening files
  set rtp+=/usr/local/opt/fzf
  nnoremap <leader>t :Files<cr>
endif


command! -nargs=+ MyGrep execute 'silent grep! <args>' | copen | redraw!
nnoremap <leader>/ :MyGrep<space>
" Close the quickfix and other windows with a q
nnoremap <expr> q (!&modifiable ? ':close!<CR>' : 'q')

"Syntastic configuration
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_javascript_gjslint_conf=" --nojsdoc"
let g:syntastic_rust_checkers = ['rustc']

set colorcolumn=80 "better version of 80 column editing

set cursorline

au BufNewFile,BufRead * match ExtraWhitespace /\s\s\+$/
match ExtraWhitespace /\s\s\+$/
set nojoinspaces

"When switching between git branches tired of loading everything each time
set autoread


"Custom tab widths for file types
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab re=1
autocmd Filetype eruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype sls setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype jinja setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype html.mustache setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype go setlocal noexpandtab

"Spell checking
set spelllang=en_ca

autocmd Filetype markdown setlocal spell
autocmd Filetype gitcommit setlocal spell
