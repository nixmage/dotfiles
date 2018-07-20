set nocompatible " not compatible with vi
let mapleader = ','
set backspace=indent,eol,start "Stupid mac config


call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'dyng/ctrlsf.vim'


"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

call plug#end()

" Keymaps
nmap	<Leader>f :Files<CR>
map	<C-t>t :NERDTreeToggle<CR>
nmap	<C-t> :NERDTreeFind<CR>
nmap 	<C-F> <Plug>CtrlSFPrompt 
nmap	<C-F>f <Plug>CtrlSFCwordPath

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

