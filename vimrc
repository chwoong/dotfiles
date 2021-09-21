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
"inoremap { {}<Esc>hli
"inoremap ( ()<Esc>hli
"inoremap [ []<Esc>hli
"inoremap ' ''<Esc>hli
" inoremap <Esc>hli
" Disable the default Vim startup message.
set shortmess+=I
" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop> 

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set showcmd             " show command in bottom bar
set laststatus=2        " Show the status line at the bottom
"set mouse+=a            " A necessary evil, mouse support
set ttyfast             " Improve redrawing

augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END
set nojoinspaces " suppress inserting two spaces between sentences
set ignorecase
set smartcase

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
