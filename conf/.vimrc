" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'

" Fuzzy File Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax on
colorscheme murphy
set background=dark
set incsearch
set hlsearch
set number
set ruler
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:␣
set complete+=kspell
set completeopt+=menuone,longest
set colorcolumn=80

" Mappings
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-e> :Buffers<Cr>
