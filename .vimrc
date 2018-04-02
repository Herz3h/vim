let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3.6'

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'matze/vim-move'
Plug 'scrooloose/nerdtree',{ 'on':  'NERDTreeToggle' }
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
Plug 'tpope/vim-unimpaired'
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

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "Good completion
Plug 'padawan-php/deoplete-padawan' "PHP completion



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
let g:ctrlp_map='<c-f>'
let g:ctrlp_cmd='CtrlP'
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

" FZF
nnoremap <C-f> :FZF<cr>

" Ultisnips
" let g:UltiSnipsExpandTrigger="<C-j>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" function! s:check_back_space() abort "{{{
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}

let g:cm_sources_enable=1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


filetype plugin on
set omnifunc=syntaxcomplete#Complete
set shortmess+=c
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")


" Snippet expansion
" imap <expr> <CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
" imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-U>":"\<CR>")

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
noremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
" optional
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>

let g:gutentags_cache_dir = '~/.tags_cache'

" " css completion via `csscomplete#CompleteCSS`
" " The `'cm_refresh_patterns'` is PCRE.
" " Be careful with `'scoping': 1` here, not all sources, especially omnifunc,
" " can handle this feature properly.
" au User CmSetup call cm#register_source({'name' : 'cm-php',
" 			\ 'priority': 9, 
" 			\ 'scoping': 1,
" 			\ 'scopes': ['php'],
" 			\ 'abbreviation': 'php',
" 			\ 'word_pattern': '[\w\-]+',
" 			\ 'cm_refresh_patterns':['[\w\-]+\s*:\s+'],
" 			\ 'cm_refresh': {'omnifunc': 'phpcomplete#CompletePHP'},
" 			\ })

" let g:cm_refresh_length=[[1, 2]]
let g:deoplete#enable_at_startup = 1
