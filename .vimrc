
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'easymotion/vim-easymotion'
" javascript
Plugin 'pangloss/vim-javascript'

" html
Plugin 'othree/html5.vim'
" css
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'mxw/vim-jsx'
" Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/vim-auto-save'
call vundle#end()



" settings
" spaces as tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoread
set autoindent
set smartindent
set nu
set laststatus=2
set timeoutlen=500
set ttimeoutlen=0
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set encoding=utf-8
set termencoding=utf-8
set updatetime=500
set noswapfile
set splitright
set splitbelow
set nocompatible
set tags=./tags;
set ignorecase
set hidden
set hlsearch
set incsearch
"set cursorline
set pumheight=10
"autochange to curr dir
set autochdir
set fillchars+=vert:\ 
let mapleader=","
filetype off
filetype plugin on
filetype plugin indent on
" autocmd CompleteDone * pclose

" color
syntax enable

colorscheme wombat
" set guifont=Hack:h11:cDEFAULT

"remove right-hand scroll bar
set guioptions-=r

"remove menu bar
set guioptions-=m
"remove toolbar
set guioptions-=T

" airline
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1 
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_warning = ''
let g:airline_section_error = ''
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1

" map <alt+n> to navigate through tabs
for c in range(1, 9)
	exec "set <A-".c.">=\e".c
	exec "map \e".c." <A-".c.">"

	let n = c - '0'
	exec "map <M-". n ."> ". n ."gt"
endfor

" session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 5
let g:session_autosave_silent = 1
let g:session_default_to_last = 1
let g:session_lock_enabled=0
set ssop+=resize,winpos
set ssop-=buffers
" NERDCommenter
let g:NERDSpaceDelims = 1

" easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_shade = 0
hi link EasyMotionTarget Search
hi EasyMotionTarget2First ctermfg=202 ctermbg=None cterm=None
hi EasyMotionTarget2Second ctermfg=202 ctermbg=None cterm=None

"open tag window
nmap <F8> :TagbarToggle<CR>
"highlight
nmap <F3> :set hlsearch!<CR>

" открыть ~/.vimrc
nnoremap <F4> :tabe ~/_vimrc<CR>:tabm 0<CR>

" сохранить ~/.vimrc и применить изменения
nnoremap <F5> :w<CR>:so $MYVIMRC<CR>

"comment/uncomment
map <C-S-c> <plug>NERDCommenterToggle
let g:jsx_ext_required = 0

"syntastic - check syntax
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"autoclosing
imap <C-Enter> <CR><Esc>O

set backspace=indent,eol,start

"autosave options
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
