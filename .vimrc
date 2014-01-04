set nocompatible  " Use Vim defaults

execute pathogen#infect()

set backspace=indent,eol,start  " reasonable backspace in insert mode

set modelines=0   " Modelines are a security hazard

" Formatting
set expandtab   " Automatically expand tabs to spaces
set tabstop=2   " tab width
set shiftwidth=2  " wide, otherwise it's tabstop wide
set softtabstop=2   " Simulated tabstop of 4 by using spaces and tabs
set textwidth=78  " where to wrap lines
set fo=crq      " when to wrap lines
set autoindent  " set auto-indenting on

" Display
"set ruler   " show the cursor position
set nowrap  " don't warp display

set laststatus=2
" Format the statusline
"set statusline=[%n]\ %<%.99f%m%r%h\ %w\ \ %{CurDir()}%h\%=%-16(\ %l/%L,\ %c%V\ %{GitBranch()}\ %)
"set statusline=[%n]\ %<%.99f%m%r%h\ %w\ \ %{CurDir()}%h\%=%-16(\ %l/%L,\ %c%V\ %{fugitive#statusline()}\ %)
set encoding=utf-8

set showmatch   " show matching brackets
set showcmd   " show (partial) command in status line

set wildmenu
"set wildmode=list:longest,full

" Searching
set incsearch   " incremental search
set infercase   " handle case in a smart way in autocompletes
set ignorecase  " ignore case in search
set smartcase   " unless the search string contains uppercase
set hlsearch  " highlighted search
"nnoremap <C-L> :noh<CR><C-L>

" Display whitespace characters nicely when using 'set list'
set listchars=eol:$,tab:>-,trail:-,extends:>,precedes:<

filetype plugin on    " enable filetype detection
filetype indent on    " enable language-depenent indentation

runtime macros/matchit.vim

syntax enable
set background=dark
"set t_Co=16
"let g:solarized_termtrans=1
colorscheme solarized
highlight clear SignColumn

let g:bufferline_fname_mod = ':p:.'
let g:bufferline_echo = 0

let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 0
"let g:airline_theme = 'solarized'
let g:airline_theme = 'luna'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_inactive_collapse=1

let ruby_space_errors=1   " highlight tab/space mixing in ruby files
highlight RedundantSpaces ctermbg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

let javascript_enable_domhtmlcss=1
let javascript_ignore_javaScriptdoc=1

let g:tern_map_keys=1
let g:tern_show_arument_hints='on_hold'

set number  " line numbers
set scrolloff=5
let loaded_matchparen=1
set hidden

set nobackup
set noswapfile

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <C-n> :NERDTreeToggle<CR>

set pastetoggle=<F2>

" Git branch
"function! GitBranch()
"  let branch = system("git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
"  if branch != ''
"   return '   git: ' . substitute(branch, '\n', '', 'g')
"  en
"  return ''
"endfunction
"
"function! CurDir()
"  return substitute(getcwd(), '/Users/ruth/', "~/", "g")
"endfunction

"function! HasPaste()
"  if &paste
"    return 'PASTE MODE  '
"  en
"  return ''
"endfunction
