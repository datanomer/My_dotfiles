:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set termguicolors
:set autoindent smartindent
:set clipboard^=unnamed,unnamedplus
call plug#begin()

Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/neoclide/coc.nvim', { 'branch': 'release'} " Auto Completioni
Plug 'https://github.com/m-pilia/vim-ccls' " c and c++ language server
Plug 'https://github.com/fannheyward/coc-rust-analyzer' " Rust language server
Plug 'https://github.com/morhetz/gruvbox' "GRUVBOX
Plug 'https://github.com/neovim/pynvim'
Plug 'Shirk/vim-gas'
Plug 'nvim-lua/Plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'wittyjudge/gruvbox-material.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'petertriho/nvim-scrollbar'
Plug 'nvim-lua/plenary.nvim'

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

set termguicolors
lua << EOF
require("bufferline").setup{}
require("scrollbar").setup{}
require('telescope').setup{}
EOF

:colorscheme gruvbox-material
nnoremap <C-r> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-g> :Telescope live_grep<CR>
nnoremap <C-f> :Telescope find_files<CR>


nnoremap <silent>b :BufferLineCycleNext<CR>
nnoremap <silent>m :BufferLineCyclePrev<CR>

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

