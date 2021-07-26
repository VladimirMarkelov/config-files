filetype off
call plug#begin('~/AppData/Local/nvim/plugged')
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/LargeFile'
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich' " kind of vim-surround but with differnt key mappings
Plug 'wellle/targets.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'tomtom/tcomment_vim'
Plug 'tyru/caw.vim' " add/remove comment
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nishigori/increment-activator'
" Plug 'adie/blockdiff'
Plug 'sheerun/vim-polyglot'
Plug 'google/vim-searchindex'
Plug 'jmcantrell/vim-numbered'
Plug 'lukhio/vim-mapping-conflicts'
Plug 'andrewradev/linediff.vim'
Plug 'altercation/vim-colors-solarized' " colorscheme
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-lion'
Plug 'jmcantrell/vim-diffchanges'
" Plug 'tpope/vim-characterize'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-abolish'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kshenoy/vim-signature'
Plug 'itchyny/vim-cursorword'
Plug 'gruvbox-community/gruvbox'  " colorscheme
Plug 'unblevable/quick-scope'
" Plug 'kabbamine/lazylist.vim'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'machakann/vim-swap'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
" Plug 'vimwiki/vimwiki'
Plug 'ajmwagar/vim-deus'  " colorscheme
Plug 'reedes/vim-wordy'
" Plug 'SidOfc/mkdx'
Plug 'tacahiroy/ctrlp-funky'
" Plug 'norcalli/nvim-colorizer.lua'
" Plug 'sainnhe/gruvbox-material'  " colorscheme
Plug 'farmergreg/vim-lastplace'
" Plug 'sainnhe/edge'
" Plug 'pechorin/any-jump.nvim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'VladimirMarkelov/haku-vim'
Plug 'joereynolds/place.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'
" Plug 'kamwitsta/nordisk'
Plug 'hardcoreplayers/oceanic-material'  " colorscheme
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'mg979/vim-visual-multi'
" Plug 'AndrewRadev/sideways.vim'  " move function arguments etc around
Plug 'srcery-colors/srcery-vim'  " colorscheme
Plug 'sainnhe/forest-night'  " colorscheme
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'godlygeek/tabular'
Plug 'franbach/miramare' " colorscheme
Plug 'junegunn/vim-peekaboo'
Plug 'dkarter/bullets.vim'
Plug 'matze/vim-move'
call plug#end()

set mouse=a " for selection with mouse
set cursorcolumn
syntax sync minlines=256
set re=1
" speed up coloring for big files
set lazyredraw
set regexpengine=1

let g:oceanic_material_enable_bold = 0
let g:gruvbox_contrast_dark = "soft"
let g:rainbow_active = 1
let g:LargeFile = 5
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=200
let g:buffergator_viewport_split_policy = "B"
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
" let g:srcery_undercurl = 0 " just hides all spelling errors
let g:miramare_enable_italic = 0
let g:miramare_disable_italic_comment = 1

" let g:surround_{char2nr("b")} = "[b]\r[/b]"
" let g:surround_{char2nr("i")} = "[i]\r[/i]"
" let g:surround_{char2nr("q")} = "[quote]\r[/quote]" 

" set clipboard+=unnamedplus

"      \ 'colorscheme': 'jellybeans',
"      \ 'colorscheme': 'gruvbox',
let g:lightline = {
      \ 'colorscheme': 'everforest',
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

let g:vmt_dont_insert_fence = 0
let g:vmt_auto_update_on_save = 0
" let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
"                        \ 'enter': { 'shift': 1 },
"                        \  'links': { 'external': { 'enable': 0 }, 'fragment': { 'complete': 0 } }, 
"                        \ 'toc': { 'text': 'Table of Contents' },
"                        \ 'fold': { 'enable': 0 } }
"let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
"                                       " plugin which unfortunately interferes with mkdx list indentation

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
set showbreak=↪\ 

set termguicolors " for neovide
"set linespace=-1 " for cascadia code
syntax on
set background=dark
" gruvbox for terminals without curvy unerline support to show spellcheck errors
" let g:gruvbox_improved_warnings = 0
" let g:gruvbox_italic = 0
let g:gruvbox_guisp_fallback = 'bg'
let g:srcery_guisp_fallback = 'bg'
" colorscheme gruvbox
" colorscheme gruvbox-material
colorscheme everforest
" colorscheme srcery

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

" relative numbering with current line absolute number
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" autocmd BufRead,BufNewFile *.* setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufEnter * :syntax sync fromstart

" ctags
autocmd BufRead *.rs :setlocal tags=./ctags.vi;/

set list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set backspace=indent,eol,start whichwrap+=<,>,[,]
set spellsuggest+=10

noremap <DOWN> gj
noremap <UP> gk
inoremap <UP> <ESC>gka
inoremap <DOWN> <ESC>gja
" noremap <F12> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
noremap <F3> :RainbowParentheses!!<CR>
nnoremap <F5>  "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>P
inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>
nnoremap <C-F5>  "=strftime("%Y-%m-%d")<CR>P
inoremap <C-F5> <C-R>=strftime("%Y-%m-%d")<CR>
map s <Nop>
map sw :let @/ = '\<' . @/ . '\>'<cr>n
map Q gq
nnoremap Q <Nop>
" inoremap jj <Esc>  " to train Ctrl+[
nmap ga <Plug>(place-insert)

" AndrewRadev/sideways.vim
" nnoremap <C-H> :SidewaysLeft<cr>
" nnoremap <C-L> :SidewaysRight<cr>


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

"set guifont=Iosevka_Term:h14
"set guifont=Iosevka\ Term:h10
"set guifont=Fantasque\ Sans\ Mono:h10
if exists("g:nvy")
    " set guifont=Cascadia\ Mono\ PL:h10
    set guifont=Iosevka\ Fixed:h11
else
    " set guifont=Cascadia\ Mono\ PL:h14	
    set guifont=Iosevka\ Fixed:h14
endif

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

" make J, K, L, and H move the cursor MORE.
" nnoremap J } " conflicts with "join lines"
" nnoremap K {
" nnoremap L g_
" nnoremap H 0

" make <c-j>, <c-k>, <c-l>, and <c-h> scroll the screen.
" nnoremap <c-j> <c-e>
" nnoremap <c-k> <c-y>
" nnoremap <c-l> zl
" nnoremap <c-h> zh

set colorcolumn=120

cmap %/ <C-R>=expand("%:p:h")."/"<CR>

" these two lines to autoreload an externally modified file on neovim gaining focus
set autoread
au FocusGained * :checktime