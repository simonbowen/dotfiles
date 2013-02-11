call pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

colorscheme elflord

" Disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> gT
inoremap <Left> <Esc>gT
noremap  <Right> gt
inoremap <Right> <Esc>gt

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:source ~/.gvimrc<cr>

let maplocalleader = ","
map <localleader>t <Plug>RubyTestRun
map <localleader>l <Plug>RubyTestRunLast
map <localleader>r <Plug>RubyFileRun

" 2 space tabs
:set tabstop=2
:set shiftwidth=2
:set expandtab
:retab

set nocompatible      " Use vim, no vi defaults
set number                        " Line numbers
set nowrap                        " don't wrap lines
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set noswapfile                    " swap files are a pain in the ass

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_root_markers = ['Capfile']

" remove whitespace
nnoremap <localleader>w :%s/\s\+$//<cr>

" automatically remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" backup and swp
set backupskip=/tmp/*,/private/tmp/* " don't backup files in these directories (eg crontab)

" map (shift "section" ie the key to the left of 1) in insert mode to create a ruby string interpolated variable
inoremap § #
inoremap ± #{}<left>

" pretty format xml
nnoremap <localleader>x :%s/></>\r</g<cr>:0<cr>=:$<cr>

" show and hide NERDTree
map <localleader>tn :NERDTreeToggle<cr>
" open files / directories with space
let NERDTreeMapActivateNode='<space>'
" show the current file in a new tree
map <localleader>tf :NERDTreeFind<cr>

" map ,l in insert mode to hash rocket
inoremap <localleader>l <space>=><space>

" scroll window before cursor reaches top/bottom
set scrolloff=5
