set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'vim-easymotion/'
Bundle 'vim-gitgutter'
Bundle 'vim-airline'
Bundle 'vim-go'
Bundle 'tagbar'
Bundle 'nerdcommenter'
" Plugin 'fatih/vim-go'

set runtimepath^=~/.vim/bundle/ctrlp.vim

filetype plugin indent off
set rtp+=$GOPATH/misc/vim
filetype plugin indent on
syntax on

set relativenumber
set scrolloff=15
colorscheme mustang

" for vim-gitgutter
highlight clear SignColumn

" for vim-airline
set laststatus=2
let g:gitgutter_diff_args = '-w'
" use raw grep (incase I have aliased it somehow)
let g:gitgutter_escape_grep = 1

set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set cindent
set cinkeys-=0#
set autoindent
set mouse=a
set mousehide

set noswapfile

set foldenable
set splitbelow

" removed tool bar from vim
set guioptions=aAce

"highlight our search results
set hlsearch
"incremental search
set incsearch

"for c.vim
filetype plugin on

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" search visual selected text
vnoremap // y/<C-R>"<CR>

nmap <space> :
nmap ,b :b#<cr>
nmap ,t :TagbarToggle<cr>

"xdebug
nmap ,, :Dn<cr>
nmap ,. :Up<cr>
nmap <C-d> :Dash!<cr>

"NERDTree
nmap ,nt :NERDTreeToggle<cr>
" Shortcut to rapidly toggle `set list`
nmap ,li :set list!<CR>
nmap <leader>v "+gP
nmap <leader>o i<cr><esc>
nmap <leader>O O<esc>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>/ <C-_><C-_>
map <leader>b <C-_>b
map <C-n> :tabnew<cr>
map <C-i> :tabp<cr>
map <C-o> :tabn<cr>

"uses surround plugin
"map <leader><leader> <S-s>*gv<S-s>/
map <leader>. :s/\/\*//gi<cr>gv:s/\*\///gi<cr>

au FileType go nmap <leader>r <Plug>(go-run)

"Invisible character colors
highlight NonText guifg=#8d8ca4
highlight SpecialKey guifg=#8d8ca4

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸-,eol:¬

let NERDTreeShowHidden=1

"Source the vimrc file afte saving it
"if has("autocmd")
	"autocmd bufwritepost .vimrc source $MYVIMRC
"endif

if $COLORTERM == 'gnome-terminal'
	  set t_Co=256
	  endif

runtime macros/matchit.vim

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

let g:go_fmt_command = "goimports"
