set nocompatible              " be iMproved, required
set number relativenumber     " line numbers

set termguicolors
" highlight LineNr ctermfg=grey
" highlight CursorLineNr ctermfg=grey cterm=bold

filetype off    " required
set path+=**    " allows :find to search subdirectories
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab     "sets tabs to 4 spaces
set autoindent
" set wildmode=longest,list,full
set laststatus=2
set nowrap
set mouse=nv
set showcmd

" Vundle init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Typing and autocompletion
Plugin 'adelarsq/vim-matchit'
Plugin 'tpope/vim-surround'

"Display
Plugin 'Yggdroot/indentLine'
Plugin 'ap/vim-css-color'
Plugin 'KabbAmine/vCoolor.vim'

"Syntax highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'

"Themes
Plugin 'morhetz/gruvbox'
Plugin 'iCyMind/NeoSolarized'

"File management
Plugin 'preservim/nerdtree'
"Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Fix theming
"let g:gruvbox_italic = '1'

" Theme
syntax on
set background=dark
colorscheme NeoSolarized

" Statusline
set statusline=%-y
set statusline+=[%-F]
set statusline+=%m
set statusline+=%=
set statusline+=[%c,%l/%L]
set statusline+=[%P]

" This makes vim close if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Key Bindings
map <C-n> :NERDTreeToggle<CR>
map <C-o> :VCoolor<CR>
