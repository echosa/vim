execute pathogen#infect()

syntax enable
set background=dark
if !has('gui_running')
  let g:solarized_termcolors=256
endif
colorscheme solarized

set number
set hidden
set ignorecase
set smartcase
set diffopt=filler,vertical

imap jk <Esc>
let mapleader = " "

" Close buffer but not the split window.
nmap <leader>d :b#<bar>bd#<CR>

noremap <leader>p :CtrlP<CR>
let g:ctrlp_max_files=100000
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:50'

let PHP_vintage_case_default_indent=1
noremap <Leader>u :call PhpInsertUse()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

noremap <Leader>a :Ag! <CR>

"""""""""""
" ARCHIVE "
"""""""""""

"autocmd BufReadPost fugitive://* set bufhidden=delete
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
