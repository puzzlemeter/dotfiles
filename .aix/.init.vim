" ========================= Normal Setting Start =========================
"Set windows pos and resize init
if(has('gui'))
  set lines=38
  set columns=80
endif

""let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = substitute(system('which python'),"\n","","")
""let g:python3_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = substitute(system('which python3'),"\n","","")


" ## Make its Gvim Like Windows behave ##
" So you can use
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
" ---- recommentary ----
" behave mswin

" Format
set nu
set copyindent
set preserveindent
set tabstop=2 "4
set shiftwidth=2 "4
set softtabstop=0 "4
" set expandtab
set noexpandtab
" set modifiable

set autowrite
set display=lastline

" Encoding setting
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932,latin1
set termguicolors
set termencoding=utf-8
language messages en_US.utf-8

" For indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set fileignorecase
set showcmd
set whichwrap+=<,>,h,l

" Omni Complete Setting
set wildmenu
set wildmode=longest,full
set complete+=k
set completeopt=menu,menuone,longest
set completeopt+=preview
set switchbuf=useopen,usetab
set shortmess=a

" No back up files
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set noshowmode
set ruler
set cursorline
set winaltkeys=no

" Advance config
set magic
set lazyredraw
" set redrawtime=100000
set synmaxcol=0
set ttyfast
set hidden
"set autochdir
set autoread
"set showmatch
set laststatus=0
set cmdheight=1
set modelines=1

" No surround sound
set noerrorbells
set novisualbell
set t_vb=

" Set Fold config
" set foldmethod=syntax
" - - - -
set foldmethod=indent
set foldnestmax=10
set foldenable
set nofoldenable
set foldlevel=2

" misc settings
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac

" Set Spliter
set splitright
set splitbelow

" set Undo file
set undofile
set undodir=~/.vim/undo/
set viminfo+=!

" Diff GUI Vim with NVim
" Set No Top Menu and Scroll
set guioptions-=e
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=B
set guioptions-=0
set go=
set guitablabel=
" set paste

" Setting Spell Checker
set spelllang=en_us                      " spelling options
set spellfile=~/.vim/spell/en.utf-8.add  " spell files added with `zg`
"set dictionary+=/usr/share/dict/words

" Fix Fucking Vim Prefix for GTK
set backspace=indent,eol,start

" setting the tabs like that
set list listchars=tab:→\ ,extends:>,precedes:<

au BufNewFile,BufRead *.vue set ft=html
au BufNewFile,BufRead *.cubec,*.ax,*.handlebar,*.mustache,*.tpl set ft=mustache
au BufNewFile,BufRead *.vm,*.stm set ft=velocity
au BufRead *.ts set ft=typescript
au BufRead *.rs set ft=rust
let g:go_autodetect_gopath = 0
" ========================= Normal Setting End =========================
