filetype off
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/LargeFile'
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich' " kind of vim-surround but with differnt key mappings
Plug 'wellle/targets.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nishigori/increment-activator'
Plug 'adie/blockdiff'
Plug 'sheerun/vim-polyglot'
Plug 'google/vim-searchindex'
Plug 'jmcantrell/vim-numbered'
Plug 'lukhio/vim-mapping-conflicts'
Plug 'andrewradev/linediff.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-lion'
Plug 'jmcantrell/vim-diffchanges'
Plug 'tpope/vim-characterize'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-abolish'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kshenoy/vim-signature'
Plug 'itchyny/vim-cursorword'
Plug 'gruvbox-community/gruvbox'
Plug 'unblevable/quick-scope'
Plug 'kabbamine/lazylist.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'machakann/vim-swap'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'vimwiki/vimwiki'
Plug 'ajmwagar/vim-deus'
Plug 'reedes/vim-wordy'
Plug 'SidOfc/mkdx'
Plug 'tacahiroy/ctrlp-funky'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sainnhe/gruvbox-material'
Plug 'farmergreg/vim-lastplace'
" Plug 'sainnhe/edge'
Plug 'pechorin/any-jump.nvim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'VladimirMarkelov/haku-vim'
" Plug 'kamwitsta/nordisk'
call plug#end()

set mouse=a " for selection with mouse
set cursorcolumn
syntax sync minlines=256
set re=1
" speed up coloring for big files
set lazyredraw
set regexpengine=1

let g:gruvbox_contrast_dark = "soft"
let g:rainbow_active = 1
let g:LargeFile = 5
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=200
let g:buffergator_viewport_split_policy = "B"
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" set clipboard+=unnamedplus

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
                        \  'links': { 'external': { 'enable': 0 }, 'fragment': { 'complete': 0 } }, 
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
filetype plugin indent on
filetype on

set modelines=0
set nu
set hlsearch
" set columns=999 lines=999

syntax on
set background=dark
" gruvbox for terminals without curvy unerline support to show spellcheck errors
" let g:gruvbox_improved_warnings = 0
" let g:gruvbox_italic = 0
let g:gruvbox_guisp_fallback = 'bg'
" colorscheme gruvbox
colorscheme gruvbox-material

" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
" let g:strip_whitelines_at_eof=1
" let g:vimwiki_folding='list'

set showcmd
set showmatch
set noai
set nosmartindent
set nocindent
set wildmode=list:longest
set noshowmode
set noruler
set laststatus=2
set tabstop=4 
set expandtab 
set shiftwidth=4 
set softtabstop=4
" autocmd BufRead,BufNewFile *.* setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufEnter * :syntax sync fromstart

" ctags
autocmd BufRead *.rs :setlocal tags=./ctags.vi;/

set list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set backspace=indent,eol,start whichwrap+=<,>,[,]

noremap <DOWN> gj
noremap <UP> gk
inoremap <UP> <ESC>gka
inoremap <DOWN> <ESC>gja
noremap <F12> :NERDTreeToggle<CR>
noremap <F3> :RainbowParentheses!!<CR>
nnoremap <F5>  "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>
nnoremap <C-F5>  "=strftime("%Y-%m-%d")<CR>P
inoremap <C-F5> <C-R>=strftime("%Y-%m-%d")<CR>
map s <Nop>
map sw :let @/ = '\<' . @/ . '\>'<cr>n
map Q gq
nnoremap Q <Nop>
inoremap jj <Esc>

" CTRLP-Funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" vnoremap <C-C> "+y
" vnoremap <C-Insert> "+y
" map <C-V>		"+gP
" map <S-Insert>		"+gP
inoremap <S-Insert>		"+gP
cnoremap <C-V>		<C-R>+
cnoremap <S-Insert>		<C-R>+
inoremap <S-Insert>		<C-R>+
inoremap <c-w> <c-g>u<c-w>

"set guifont=Iosevka_Term:h10
"set guifont=Iosevka\ Term:h10
"set guifont=Fantasque\ Sans\ Mono:h10
set ff=unix
set encoding=utf-8
setglobal fileencoding=utf-8
" set fileencodings=ucs-bom,utf-8,cp-1251,latin1

nnoremap <leader>v V`]
nnoremap <ESC><ESC> :nohlsearch<CR>
xnoremap Y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P

noremap j gj
noremap k gk

set colorcolumn=120

cmap %/ <C-R>=expand("%:p:h")."/"<CR>

" these two lines to autoreload an externally modified file on neovim gaining focus
set autoread
au FocusGained * :checktime