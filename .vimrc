execute pathogen#infect()

syntax on
colorscheme desert

set guifont=Inconsolata\ for\ Powerline:h15

set encoding=utf-8

set nocompatible

filetype plugin on
filetype indent on

set path+=**

set wildmenu

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set cindent
set cinkeys-=0#
set mouse=a
set mousehide

set noswapfile

set foldenable
set splitbelow

"highlight our search results
set hlsearch
"incremental search
set incsearch
set scrolloff=15

" work with auto-compilers, without it live reload might not work
set backupcopy=yes

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" universal save
imap <C-s> <esc>:w<cr>
map <C-s> <esc>:w<cr>

"ctrl + h,j,k,l move between panes
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-n> :tabnew<cr>
map <C-i> :tabp<cr>
map <C-o> :tabn<cr>

map <C-c> <esc>

" for vim-gitgutter
highlight clear SignColumn

"toggle between buffers
nmap ,b :b#<cr>
nmap ,t :TagbarToggle<cr>
nmap <space> :
"NERDTree
nmap ,nt :NERDTreeToggle<cr>
" Shortcut to rapidly toggle `set list`
nmap ,li :set list!<CR>

"search selected
vnoremap <expr> // 'y/\V'.escape(@",'\').'<CR>'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"Invisible character colors
highlight NonText guifg=#8d8ca4
highlight SpecialKey guifg=#8d8ca4

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸-,eol:¬

let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1

let g:gitgutter_diff_args = '-w'
" use raw grep (incase I have aliased it somehow)
let g:gitgutter_escape_grep = 1

" useful for go formatting
let g:go_fmt_command = "goimports"
