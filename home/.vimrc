set nocompatible               " be iMproved
filetype off                   " required!

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

" shortcuts
nmap <silent> <c-n> :NERDTreeToggle<CR>

" let Vundle manage Vundle
" required! 
" Bundle 'gmarik/vundle'
" Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-rails.git'
" Bundle 'msanders/snipmate.vim.git'
" Bundle 'scrooloose/nerdtree.git'

" Color schemes
" Bundle 'altercation/vim-colors-solarized.git'

set background=dark
syntax enable
let g:solarized_termtrans=1
" colorscheme solarized

set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

" from vimrc example file
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=50    " keep 50 lines of command line history
set ruler   " show the cursor position all the time
set showcmd   " display incomplete commands
set incsearch   " do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")
