let mapleader = ","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline-themes'


call plug#end()
	let g:airline_theme='lucius'
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber

" Enable autocompletion:
	set wildmode=longest,list,full

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
