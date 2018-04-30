let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'matze/vim-move'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'tmhedberg/matchit'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/neomru.vim'
Plug 'wellle/targets.vim'
Plug 'tommcdo/vim-exchange'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'mxw/vim-jsx'
Plug 'maxbrunsfeld/vim-yankstack'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install'  }
" Plug 'phpactor/phpactor' ,  {'do': 'composer install'}

Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

Plug 'felixfbecker/php-language-server', {'do': 'composer install && composer run-sCRipt parse-stubs'}

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'StanAngeloff/php.vim'

Plug 'vim-utils/vim-ruby-fold'
Plug 'vim-ruby/vim-ruby'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dkprice/vim-easygrep'
Plug 'terryma/vim-multiple-cursors'

Plug 'wellle/visual-split.vim'
Plug 'vim-airline/vim-airline'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'sodapopcan/vim-twiggy'
Plug 'thaerkh/vim-indentguides'

call plug#end()

" General Configuration
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set smartindent
set number
set signcolumn=yes
set guifont=Monaco:h11
" set timeoutlen=1000 ttimeoutlen=0
" Use spaces instead of tabs
set expandtab
set pastetoggle=<leader>p

" Be smart when using tabs ;)
set smarttab

"s 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" ruby
set re=1
let g:ruby_path = "ruby-2.4.1"


" Theme
set t_Co=256
syntax enable
set background=dark
colorscheme seti
set termguicolors

" Mappings
let mapleader="\<Space>"
imap jk <Esc>
imap kj <Esc>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>w :w!<CR>
map <leader>q :q!<CR>
map <leader>ee :e ~/.vimrc<CR>
map <leader>er :so ~/.vimrc<CR>

" Search and Replace
nmap <leader>s :%s//g<Left><Left>
command! W w !sudo tee % > /dev/null

" Plugins
" easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Ruby fold
let g:ruby_fold_lines_limit = 200

" 

" Profiling bindings
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<CR>:exe ":profile func *"<CR>:exe ":profile file *"<CR>
nnoremap <silent> <leader>DP :exe ":profile pause"<CR>
nnoremap <silent> <leader>DC :exe ":profile continue"<CR>
nnoremap <silent> <leader>DQ :exe ":profile pause"<CR>:noautocmd qall!<CR>


let g:cm_sources_enable=1

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set shortmess+=c

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
noremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:gutentags_cache_dir = '~/.tags_cache'
set statusline+=%{gutentags#statusline()}
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']


" FZF
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>c :Commits<CR>
nnoremap <silent> <leader>a :Ag<CR>

let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%CR"'



command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)


"  YANKSTACK
nmap p <Plug>yankstack_substitute_older_paste
nmap P <Plug>yankstack_substitute_newer_paste

" MOVE
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw

set timeout timeoutlen=1000 ttimeoutlen=100

" VINEGAR
nmap <leader>n :Explore<CR>

" EASYGREP
set grepprg=ag
let g:EasyGrepCommand=1
let g:EasyGrepRecursive=1

let php_html_load = 0
let php_html_in_heredoc = 0
let php_html_in_nowdoc = 0
let php_sql_query = 0
let php_sql_heredoc = 0
let php_sql_nowdoc = 0

" AIRLINE
set laststatus=2
set noshowmode
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

set noswapfile


" DISPATCH
nmap <leader>t :Dispatch<cr>



" VISUAL-SPLIT
xmap <leader>gsa <Plug>(Visual-Split-VSSplitAbove)

au User lsp_setup call lsp#register_server({                                    
            \ 'name': 'php-language-server',                                            
            \ 'cmd': {server_info->['php', expand('~/.vim/plugged/php-language-server/bin/php-language-server.php')]},
            \ 'whitelist': ['php'],                                                     
            \ })
