set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'mxw/vim-jsx'
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'posva/vim-vue'
Plugin 'kien/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-abolish'
Plugin 'prettier/vim-prettier'

call vundle#end()
filetype indent plugin on

let g:jsx_ext_required = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
let g:table_mode_corner="|"

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set guifont=Consolas:h14
set statusline=""
set nu
set noruler
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" keep at least 5 lines below the cursor
set scrolloff=5

:let mapleader = ","

" automatic js and vue formatting
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.css,*.less,*.scss,*.vue Prettier


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*pycache*,*/node_modules/*     " MacOSX/Linux

syntax on
colorscheme monokai
set termguicolors

if exists('+colorcolumn')
  highlight ColorColumn ctermbg=235 guibg=#2c2d27
  set colorcolumn=72
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>59v.\+', -1)
endif
