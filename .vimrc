" Enable Pathogen the awesome plugin manager thing...
execute pathogen#infect()
filetype plugin on

" Suppress vim error message at startup

let g:pydiction_location = '/Users/varunrau/.vim/after/complete-dict'
" Enable file type plugins
set nocp

" configure tags - add aditional tags here or comment out not-used ones
   "set tags+=~/.vim/tags/gl
    set tags+=~/.vim/tags/stl
    set tags+=~/.vim/tags/libxml2
    set tags+=~/.vim/tags/llvmc
    set tags+=~/.vim/tags/llvm
  set tags+=~/.vim/tags/cairo

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

  " build tags of your own project with CTRL+F12
  "map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
  noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
  inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

  " OmniCppComplete
  let OmniCpp_NamespaceSearch = 1
  let OmniCpp_GlobalScopeSearch = 1
  let OmniCpp_ShowAccess = 1
  let OmniCpp_MayCompleteDot = 1
  let OmniCpp_MayCompleteArrow = 1
  let OmniCpp_MayCompleteScope = 1
  let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]


  " automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
  set completeopt=menuone,menu,longest,preview

if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("gui_running")
    colorscheme Tomorrow
    set lines=45
    set columns=84
    if has("win32")
        set guifont=Source_Code_Pro:h12:cANSI
    else
        set guifont=Source\ Code\ Pro\ 12
    endif
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
set autoindent
set copyindent
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set scrolloff=5
set backspace=2
set number
set ruler
set visualbell
set noerrorbells
set laststatus=2
set statusline=%n\ %f%=%l\\%L

nnoremap ; :nohlsearch<CR>
nnoremap <F3> :NumbersToggle<CR>
set pastetoggle=<F2>

if has("unix")
    set backup
    set backupdir=/tmp
    set directory=/tmp
endif

"NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1

"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all = 1

"PHP highlighting extras
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

"warning when going over 79 characters per line
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.*/

" Maps jk to the escape key. This is awesome!
imap jk <Esc>

" " Enable Powerline
 python from powerline.ext.vim import source_plugin; source_plugin()

" Setting the leader key. Here we map the leader key to ","
:let mapleader = ","

" A Mapping for Vertical Split Windows
nnoremap <leader>w <C-w>v<C-w>l

" Mappings to move around the splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Syntastic settings
let g:syntastic_quiet_warnings=1


" Change popup menu color, so it's not super obnoxious
highlight Pmenu ctermbg=238 gui=bold
