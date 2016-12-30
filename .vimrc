colorscheme wombat256mod
set number              " Number the lines of the file

set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
syntax enable           " Enable syntax processing
set cursorline          " Highlight the current line
set showmatch           " Highlight matching [{()}]
set autoread            " Automatically read changes from files
set hlsearch            " Enable search highlighting


" Avoid annoying typos
:command WQ wq
:command QW wq
:command Wq wq
:command W w
:command Q q

" Disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Change where vim automatically backs up files to /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Pathogen configuration
execute pathogen#infect()
syntax on
filetype plugin indent on

" Syntastic configuration.
" See: https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
