let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'matze/vim-move'
Plug 'tpope/vim-vinegar'
Plug 'mattn/emmet-vim'
Plug 'eugen0329/vim-esearch'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/neomru.vim'
Plug 'wellle/targets.vim'
Plug 'tommcdo/vim-exchange'
Plug 'mhinz/vim-startify'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'mxw/vim-jsx'
Plug 'terryma/vim-multiple-cursors'
Plug 'maxbrunsfeld/vim-yankstack'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install'  }
Plug 'phpactor/phpactor' ,  {'do': 'composer install'}

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" Plug 'padawan-php/deoplete-padawan' "PHP completion


Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-ruby-fold'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" General Configuration
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set smartindent
" Search and Replace
nmap <Leader>s :%s//g<Left><Left>
set number
set timeoutlen=1000 ttimeoutlen=0
" Use spaces instead of tabs
set expandtab
set pastetoggle=<Leader>p

" Be smart when using tabs ;)
set smarttab

"s 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" Theme
set t_Co=256
syntax enable
set background=dark
colorscheme peaksea

" Mappings
inoremap jk <Esc>
map <C-n> :NERDTreeToggle<CR>
let mapleader="\<Space>"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>w :w!<cr>
map <leader>q :q!<cr>
command W w !sudo tee % > /dev/null
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>


" Plugins
" easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Ruby fold
let g:ruby_fold_lines_limit = 200

" 

" Profiling bindings
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<cr>:exe ":profile func *"<cr>:exe ":profile file *"<cr>
nnoremap <silent> <leader>DP :exe ":profile pause"<cr>
nnoremap <silent> <leader>DC :exe ":profile continue"<cr>
nnoremap <silent> <leader>DQ :exe ":profile pause"<cr>:noautocmd qall!<cr>


let g:cm_sources_enable=1

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set shortmess+=c

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
noremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:gutentags_cache_dir = '~/.tags_cache'


" FZF
nnoremap <C-f> :FZF<cr>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
set signcolumn=yes

nmap <leader>n :Explore<cr>
