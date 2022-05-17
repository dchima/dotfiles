"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

" themes
"Plug 'morhetz/gruvbox'
"Plug 'habamax/vim-polar'
"Plug 'alessandroyorba/despacio'
"Plug 'wojciechkepka/vim-github-dark'
"Plug 'cormacrelf/vim-colors-github'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'tomasiser/vim-code-dark'
"Plug 'arcticicestudio/nord-vim'
"Plug 'mhartington/oceanic-next'
"Plug 'EdenEast/nightfox.nvim'
"https://www.opensourceagenda.com/projects/nightfoxnvim
"Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
"Plug 'savq/melange'
"Plug 'sainnhe/sonokai'
"Plug 'shaunsingh/nord.nvim'
"Plug 'sonph/onehalf'
Plug 'sainnhe/edge'

" git
Plug 'tpope/vim-fugitive'

" navigation
Plug 'preservim/nerdtree' 

" file finder
Plug 'ctrlpvim/ctrlp.vim'

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" syntax highlighting
"Plug 'jackguo380/vim-lsp-cxx-highlight'
" Plug 'arakashic/chromatica.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Status bar
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme edge 
"colorscheme sonokai
" for nightfox: colorscheme nightfox | nordfox | dayfox | dawnfox | duskfox

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

filetype plugin indent on
syntax on
" set colorcolumn=80
set background=light
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=2
set shiftwidth=2
set expandtab
set expandtab
set smartindent

if exists("$TMUX")
  let &t_RB = "\ePtmux;\e\e]11;?\007\e\\"
endif

lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = "all",
  highlight = { enable = true },
  indent = { enable = true }
}
EOF
