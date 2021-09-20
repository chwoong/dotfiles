if has("syntax")
    syntax on
endif
set number
set relativenumber
set tabstop=4
set autoindent
set cindent
" make tab to space
set expandtab
" erase the space at once
set softtabstop=4
set hlsearch
set incsearch
set title
set ruler
set confirm
" match parenthesis
set showmatch
" show current cussor line
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number

" auto parenthesis
inoremap { {}<Esc>hli
inoremap ( ()<Esc>hli
inoremap [ []<Esc>hli
inoremap ' ''<Esc>hli
inoremap " ""<Esc>hli


set showcmd             " show command in bottom bar
set laststatus=2        " Show the status line at the bottom
set mouse+=a            " A necessary evil, mouse support
set ttyfast             " Improve redrawing

augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END
set nojoinspaces " suppress inserting two spaces between sentences
set ignorecase
set smartcase
