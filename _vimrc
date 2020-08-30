set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

filetype off
let path='~/vimfiles/plug-bundle'

call plug#begin(path)
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'fatih/vim-go'
Plug 'vim-scripts/LargeFile'
Plug 'tpope/vim-surround'
" Plug 'rust-lang/rust.vim'
Plug 'wellle/targets.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'tommcdo/vim-exchange'
" Plug 'luochen1990/rainbow'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'godlygeek/tabular'
" Plug 'arecarn/crunch.vim'
Plug 'nishigori/increment-activator'
Plug 'adie/blockdiff'
Plug 'sheerun/vim-polyglot'
Plug 'google/vim-searchindex'
" Plug 'diffchar.vim'
" Plug 'bling/vim-airline'
" Plug 'joereynolds/place.vim'
Plug 'jmcantrell/vim-numbered'
Plug 'lukhio/vim-mapping-conflicts'
Plug 'andrewradev/linediff.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-lion'
Plug 'jmcantrell/vim-diffchanges'
" Plugin 'ryanoasis/vim-devicons'
" Plug 'rhysd/clever-f.vim'
" Plug 'wesq3/vim-windowswap'
Plug 'tpope/vim-characterize'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-abolish'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kshenoy/vim-signature'
" Plug 'tweekmonster/startuptime.vim'
Plug 'itchyny/vim-cursorword'
" Plug 'jnurmine/Zenburn'
" Plug 'morhetz/gruvbox' " unmaintaned
Plug 'gruvbox-community/gruvbox'
" Plug 'yueyoum/vim-linemovement'
Plug 'unblevable/quick-scope'
Plug 'kabbamine/lazylist.vim'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'machakann/vim-swap'
Plug 'itchyny/lightline.vim'
" Plug 'vim-scripts/YankRing.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'vimwiki/vimwiki'
Plug 'ajmwagar/vim-deus'
Plug 'reedes/vim-wordy'
Plug 'SidOfc/mkdx'
" Plug 'sainnhe/vim-color-forest-night'
Plug 'sainnhe/gruvbox-material'

call plug#end()

" set nocursorcolumn
set cursorcolumn
syntax sync minlines=256
set re=1

" speed up coloring for big files
set lazyredraw
set regexpengine=1

" let g:go_fmt_fail_silently = 0
" let g:go_fmt_autosave = 0
" let g:go_metalinter_autosave = 0
" let g:go_asmfmt_autosave = 0
let g:gruvbox_contrast_dark = "soft"
let g:rainbow_active = 1
let g:LargeFile = 5
" let g:zv_zeal_executable = 'c:\Users\vvm\Utils\Zeal\zeal.exe'
let g:buffergator_viewport_split_policy = "B"
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=200


"      \ 'colorscheme': 'jellybeans',
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'right': [
      \              [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ],
      \              [ 'spell' ],
      \ ],
     \ },
     \ 'component': {
     \   'charvaluehex': '0x%B'
     \ },
     \ }
"                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 0 } },
                        \ 'toc': { 'text': 'Table of Contents' },
                        \ 'fold': { 'enable': 0 } }
let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
                                       " plugin which unfortunately interferes with mkdx list indentation

set scrolloff=1
set sidescrolloff=5
set formatoptions+=j " Delete comment character when joining commented lines
set history=1000
set ttimeout
set ttimeoutlen=100

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

filetype plugin indent on
filetype on

" set undofile
set modelines=0

set nu
set hlsearch
set columns=999 lines=999

syntax on
set background=dark

" gruvbox for terminals without curvy unerline support to show spellcheck errors
" let g:gruvbox_improved_warnings = 0
" let g:gruvbox_italic = 0
let g:gruvbox_guisp_fallback = 'bg'

" colorscheme oceandeep
" colorscheme solarized
colorscheme gruvbox

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1

set showcmd
set showmatch
set noai
set nosmartindent
set nocindent
set wildmode=list:longest
set noshowmode
set noruler

set laststatus=2
" use this if light-line is disabled
" set statusline=%{&ff}\ line=%l\ (%p%%),position=%c%V,hex=0x%B\ %y\filename=%F

autocmd BufRead,BufNewFile *.* setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufEnter * :syntax sync fromstart

" ctags
autocmd BufRead *.rs :setlocal tags=./ctags.vi;/
" autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

" :set list!
" :set list listchars=tab:>-
set list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

set backspace=indent,eol,start whichwrap+=<,>,[,]

map <DOWN> gj
map <UP> gk
imap <UP> <ESC>gka
imap <DOWN> <ESC>gja
map <F12> :NERDTreeToggle<CR>
map <F3> :RainbowParentheses!!<CR>
nnoremap <F5>  "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>
nnoremap <C-F5>  "=strftime("%Y-%m-%d")<CR>P
inoremap <C-F5> <C-R>=strftime("%Y-%m-%d")<CR>
map s <Nop>
map sw :let @/ = '\<' . @/ . '\>'<cr>n
map Q gq
nnoremap Q <Nop>
imap jj <Esc>

"set guifont=Lucida_Console:h10
"set guifont=Meslo_LG_S:h10
" set guifont=Input:h10
" set guifont=DejaVu_Sans_Mono:h10
" set guifont=DejaVuSansMono_NF:h10
set guifont=Iosevka_Fixed:h10
" set guifont=AverageMono:h10
" set guifont=Fantasque_Sans_Mono:h10
set ff=unix
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp-1251,latin1

nnoremap <leader>v V`]
nnoremap <ESC><ESC> :nohlsearch<CR>

noremap j gj
noremap k gk

set colorcolumn=100

cmap %/ <C-R>=expand("%:p:h")."/"<CR>
