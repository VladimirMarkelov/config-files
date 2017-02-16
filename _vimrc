set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

filetype off
"call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'

call vundle#begin(path)
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/LargeFile'
Plugin 'vim-scripts/netrw.vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-surround.git'

call vundle#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin indent on
filetype on

let g:LargeFile = 5

" set undofile
set modelines=0

set nu
set hlsearch
set columns=999 lines=999

syntax on
set background=dark

" colorscheme oceandeep
colorscheme solarized

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd
set showmatch
set noai
set nosmartindent
set nocindent
set wildmode=list:longest
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set laststatus=2
set statusline=%{&ff}\ line=%l\ (%p%%),position=%c%V,hex=0x%B\ %y\filename=%F

autocmd BufWritePre * :%s/\s\+$//e
" autocmd BufRead,BufNewFile *.pm setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
" autocmd BufRead,BufNewFile *.pl setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.* setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufEnter * :syntax sync fromstart

:set list!
:set list listchars=tab:>-

set backspace=indent,eol,start whichwrap+=<,>,[,]

map <DOWN> gj
map <UP> gk
imap <UP> <ESC>gki
imap <DOWN> <ESC>gji

"set guifont=Lucida_Console:h10
"set guifont=Meslo_LG_S:h10
set guifont=Input:h10
set ff=unix
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp-1251,latin1

nnoremap <leader>v V`]
nnoremap <ESC><ESC> :nohlsearch<CR>

noremap j gj
noremap k gk
nnoremap Q <Nop>

set colorcolumn=80

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

