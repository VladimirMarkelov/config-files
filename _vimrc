set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

filetype off
let path='~/vimfiles/plug-bundle'

call plug#begin(path)
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go'
Plug 'vim-scripts/LargeFile'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'wellle/targets.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'tommcdo/vim-exchange'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'

Plug 'arecarn/crunch.vim'

Plug 'nishigori/increment-activator'
Plug 'adie/blockdiff'
Plug 'sheerun/vim-polyglot'
Plug 'google/vim-searchindex'
" Plug 'diffchar.vim'
Plug 'bling/vim-airline'
Plug 'joereynolds/place.vim'
Plug 'jmcantrell/vim-numbered'
Plug 'lukhio/vim-mapping-conflicts'
Plug 'andrewradev/linediff.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-lion'
Plug 'jmcantrell/vim-diffchanges'
" Plugin 'ryanoasis/vim-devicons'
Plug 'rhysd/clever-f.vim'
Plug 'wesq3/vim-windowswap'
Plug 'tpope/vim-characterize'
Plug 'markonm/traces.vim'

call plug#end()

set nocursorcolumn
syntax sync minlines=256
set re=1

let g:go_fmt_fail_silently = 0
let g:go_fmt_autosave = 0
let g:go_metalinter_autosave = 0
let g:go_asmfmt_autosave = 0
" let g:zv_zeal_executable = 'c:\Users\vvm\Utils\Zeal\zeal.exe'
let g:rainbow_active = 1

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

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
imap <UP> <ESC>gka
imap <DOWN> <ESC>gja
map <F12> :NERDTreeToggle<CR>

"set guifont=Lucida_Console:h10
"set guifont=Meslo_LG_S:h10
" set guifont=Input:h10
" set guifont=DejaVu_Sans_Mono:h10
set guifont=DejaVuSansMono_NF:h10
" set guifont=AverageMono:h10
set ff=unix
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp-1251,latin1

nnoremap <leader>v V`]
nnoremap <ESC><ESC> :nohlsearch<CR>

noremap j gj
noremap k gk

set colorcolumn=80

if has("gui_running")
    " set guioptions=icpM
    if has('win32') || has('win64')
        if (v:version == 704 && has("patch393")) || v:version > 704
            set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
                        \geom:1,renmode:5,taamode:1
        endif
    endif
endif