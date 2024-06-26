"lua << EOF
"  require('Comment').setup()
"EOF

lua require("user.plugins")

let g:neovide_no_idle=v:true

set mouse=a " for selection with mouse
set cursorcolumn
syntax sync minlines=256
set re=1
" speed up coloring for big files
set lazyredraw
set regexpengine=1

" let g:nightfox_style = "nordfox"
" let g:oceanic_material_enable_bold = 0
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

" set clipboard+=unnamedplus

"      \ 'colorscheme': 'jellybeans',
"      \ 'colorscheme': 'gruvbox',
"      \ 'colorscheme': 'everforest',
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
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

set termguicolors " for neovide
"set linespace=-1 " for cascadia code
syntax on

" -------- Dark colorscheme ----------- begin
"set background=dark
" gruvbox for terminals without curvy unerline support to show spellcheck errors
" let g:gruvbox_improved_warnings = 0
" let g:gruvbox_italic = 0
" let g:gruvbox_guisp_fallback = 'bg'
" let g:srcery_guisp_fallback = 'bg'
" " colorscheme gruvbox
" " colorscheme gruvbox-material
" " colorscheme melange
"colorscheme everforest
" -------- Dark colorscheme ----------- end

" -------- Light colorscheme ---------- begin
set background=light
colorscheme PaperColor
" colorscheme everforest
" colorscheme mellifluous
" -------- Light colorscheme ---------- end

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
set shortmess=at " removing S from settings (set shortmess-=S) displays the number of occurencies since vim 8.1.1270

" relative numbering with current line absolute number
" set number relativenumber
" augroup numbertoggle
" 	autocmd!
" 	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" 	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

" autocmd BufRead,BufNewFile *.* setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufEnter * :syntax sync fromstart

" ctags
" autocmd BufRead *.rs :setlocal tags=./ctags.vi;/

set list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set backspace=indent,eol,start whichwrap+=<,>,[,]
set spellsuggest+=10

set breakindent
set breakindentopt=shift:2
" set showbreak=↪\
set showbreak=↳

" Fix autoindent for YAML - DO NOT indent a line when commenting a line
" autocmd BufNewFile,BufReadPost * if &filetype == "yaml" | set expandtab shiftwidth=2 indentkeys=0# | endif
autocmd BufNewFile,BufReadPost *.yaml :set indentkeys-=0#

noremap <DOWN> gj
noremap <UP> gk
inoremap <UP> <ESC>gka
inoremap <DOWN> <ESC>gja
" noremap <F12> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
noremap <F3> :RainbowParentheses!!<CR>
nnoremap <F5>  "=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>p
inoremap <F5> <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>
nnoremap <C-F5>  "=strftime("%Y-%m-%d")<CR>p
inoremap <C-F5> <C-R>=strftime("%Y-%m-%d")<CR>
map s <Nop>
" map sw :let @/ = '\<' . @/ . '\>'<cr>n
" map Q gq
nnoremap Q <Nop>
" inoremap jj <Esc>  " to train Ctrl+[
nmap ga <Plug>(place-insert)
" Redirect change operations to the blackhole to avoid spoiling 'y' register content
nnoremap c "_c
nnoremap C "_C
" Smarter j and k navigation
" With <count> moves by text lines, without <count> moves by screen lines
" nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
" nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" AndrewRadev/sideways.vim
" nnoremap <C-H> :SidewaysLeft<cr>
" nnoremap <C-L> :SidewaysRight<cr>


" CTRLP-Funky
" nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" vnoremap <C-C> "+y
" vnoremap <C-Insert> "+y
" map <C-V>		"+gP
" map <S-Insert>		"+gP
inoremap <S-Insert>		"+gP
cnoremap <C-V>		<C-R>+
cnoremap <S-Insert>		<C-R>+
inoremap <S-Insert>		<C-R>+
inoremap <c-w> <c-g>u<c-w>

" bufer list by roblillack/vim-bufferlist
"map <leader><b> :call BufferList()<CR>

" Ctrp-Funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>uu :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"set guifont=Iosevka_Term:h14
"set guifont=Iosevka\ Term:h10
"set guifont=Fantasque\ Sans\ Mono:h10
if exists("g:nvy")
    set guifont=JuliaMono:h11
else
    " set guifont=Cascadia\ Mono\ PL:h14
    set guifont=JuliaMono:h11
endif

if exists("g:neovide")
    set guifont=JuliaMono:h11
    set columns=140
    set lines=45
endif
" set columns=140
" set lines=45

" For neovide
" let g:neovide_remember_window_size = v:true

set fileformat=unix
set fileformats=unix,dos
set encoding=utf-8
setglobal fileencoding=utf-8
" set fileencodings=ucs-bom,utf-8,cp-1251,latin1

nnoremap <leader>v V`]
nnoremap <ESC><ESC> :nohlsearch<CR>
xnoremap Y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P

nnoremap <Leader>b :JABSOpen<Cr>

" noremap j gj
" noremap k gk

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
