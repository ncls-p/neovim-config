" Options
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set cc=80 " Show at 80 column a border for good code style
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'xiyaowong/nvim-transparent'
Plug 'lbrayner/vim-rzip'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'aklt/plantuml-syntax'
Plug 'lumiliet/vim-twig'
Plug 'briancollins/vim-jst'
Plug 'pearofducks/ansible-vim', {'do': './UltiSnips/generate.sh'}
Plug 'hashivim/vim-terraform'
Plug 'vim-scripts/haproxy'
Plug 'sudar/vim-arduino-syntax'
Plug 'joonty/vdebug'
Plug 'airblade/vim-gitgutter'
Plug 'uiiaoo/java-syntax.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
call plug#end()

colorscheme tokyonight-moon
let g:bargreybars_auto=0
let g:airline_solorized_bg='dark'
let g:airline_powerline_fonts=1
let g:airline#extension#tabline#enable=1
let g:airline#extension#tabline#left_sep=' '
let g:airline#extension#tabline#left_alt_sep='|'
let g:airline#extension#tabline#formatter='unique_tail'
let NERDTreeQuitOnOpen=1
let g:transparent_enabled = v:true

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" coc configuration
let g:coc_global_extensions = [
  \ '@yaegassy/coc-ansible',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-phpactor',
  \ 'coc-pyright',
  \ 'coc-sh',
  \ 'coc-tsserver',
\ ]



source ~/.config/nvim/coc-config.vim
