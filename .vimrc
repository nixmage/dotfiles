set nocompatible " not compatible with vi
let mapleader = ','
set backspace=indent,eol,start "Stupid mac config
set re=1 "Ruby bug


call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'dyng/ctrlsf.vim'

Plug 'airblade/vim-gitgutter'

"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

call plug#end()

" Keymaps
nmap	<C-G> :Files<CR>
map	<C-t>t :NERDTreeToggle<CR>
nmap	<C-t> :NERDTreeFind<CR>
nmap 	<C-F> <Plug>CtrlSFPrompt 
nmap	<C-F>f <Plug>CtrlSFCwordPath

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Vim settings
:set hlsearch

" Theme configs
"colorscheme onehalflight
colorscheme nova
set noshowmode
set cursorline
set laststatus=2

set t_Co=256
"let g:lightline = {'colorscheme' : 'wombat'}

" ########### Plugin Configs
let g:ctrlsf_auto_focus = { "at": "start" }
let g:ctrlsf_case_sensitive = 'no'

"Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

