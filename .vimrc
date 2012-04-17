"Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'spf13/PIV'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'majutsushi/tagbar'
"Bundle 'MarkWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'mileszs/ack.vim'
"Bundle 'spf13/vim-colors'
"Bundle 'tpope/vim-surround'
"Bundle 'AutoClose'
"Bundle 'vim-scripts/sessionman.vim'
"Bundle 'matchit.zip'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'godlygeek/csapprox'
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'flazz/vim-colorschemes'
"Bundle 'garbas/vim-snipmate'
"Bundle 'spf13/snipmate-snippets'
" Source support_function.vim to support snipmate-snippets.
"source $HOME/.vim/bundle/snipmate-snippets/snippets/support_functions.vim 
"Bundle 'tpope/vim-fugitive'
"Bundle 'godlygeek/tabular'
"Bundle 'Shougo/neocomplcache'
"Bundle 'leshill/vim-json'
"Bundle 'groenewege/vim-less'
"Bundle 'taxilian/vim-web-indent'
"Bundle 'HTML-AutoCloseTag'
"Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
"Bundle 'spf13/vim-markdown'
"Bundle 'spf13/vim-preview'
filetype plugin indent on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
syntax enable

set mouse=a
set spell
set hidden
"set history=1000
"set virtualedit=onemore
set backup
set backupdir=$HOME/.vimbackup/
set viewdir=~/.vimviews/
set directory=~/.vimswap/
if has('persistent_undo')
    set undofile
    set undolevels=1000
    set undoreload=10000
    set undodir=~/.vimundo/
endif
set showmode
if has('cmdline_info')
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd
endif
set showmatch
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

let mapleader = ','

" Close buffer but not split window.
nmap <leader>d :b#<bar>bd#<CR>

" Some helpers to edit mode http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

"NerdTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

nnoremap <silent> <leader>tt :TagbarToggle<CR>

let g:syntastic_check_on_open=1
let g:PIVAutoClose = 0
let g:DisableAutoPHPFolding = 1

nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRU<CR>

if has('statusline')
    set laststatus=2

    "" Broken down into easily includeable segments
    "set statusline=%<%f\    " Filename
    "set statusline+=%w%h%m%r " Options
    "set statusline+=%{fugitive#statusline()} "  Git Hotness
    "set statusline+=\ [%{&ff}/%Y]            " filetype
    "set statusline+=\ [%{getcwd()}]          " current dir
    "set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
