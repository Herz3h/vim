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
Plug 'tpope/vim-sleuth'
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
Plug 'pseewald/vim-anyfold'
Plug 'AndrewRadev/switch.vim'
" Plug 'LucHermitte/lh-tags'
Plug 'henrik/vim-indexed-search'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'phpactor/phpactor', {'for ': 'php', 'do': 'composer install'}
Plug 'Yggdroot/indentLine'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'lfv89/vim-interestingwords'

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install'  }

Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

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
" set expandtab
set pastetoggle=<leader>p

" Be smart when using tabs ;)
" set smarttab

"s 1 tab == 4 spaces
" set shiftwidth=4
" set tabstop=4


" ruby
set re=1
let g:ruby_path = "ruby-2.4.1"


" Theme
set t_Co=256
syntax enable
" set background=white
" colorscheme 256-grayvim
let g:solarized_termcolors=256
colorscheme solarized
" let g:solarized_degrade=1

" set termguicolors

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

" let g:gutentags_cache_dir = '~/.tags_cache'
" set statusline+=%{gutentags#statusline()}
" let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
"                             \ '*.phar', '*.ini', '*.rst', '*.md',
"                             \ '*vendor/*/test*', '*vendor/*/Test*',
"                             \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
"                             \ '*var/cache*', '*var/log*']


" FZF
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>c :Commits<CR>
nnoremap <silent> <leader>a :Ag<CR>
nnoremap <silent> <leader>h :History<CR>

let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%CR"'



command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)


"  YANKSTACK
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" MOVE
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50


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
let anyfold_activate=1
let anyfold_fold_comments=1
set foldlevel=1
hi Folded term=NONE cterm=NONE


" DISPATCH
nmap <leader>t :Dispatch<cr>
" false

"ALE
let ale_php_phpstan_executable = '/home/ahmed/Lysias/vendor/bin/phpstan'

"SWITCH
let g:switch_mapping = "gs"
let g:switch_custom_definitions = 
            \ [
            \ ['true', 'false'],
            \ { '^\s*\$\([^\s;]*\);': '\$this->\1 = \$\1;' }
            \ ]


" PHPACTOR
" Include use statement
nmap <Leader>pu :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>pm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>pn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>po :call phpactor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>pt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>pc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>pe :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>pe :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>px :<C-U>call phpactor#ExtractMethod()<CR>
let g:phpactorOmniError = v:true

" SURROUND
nmap <silent> dsB diB"_dkP`[<`]

" FUGITIVE
map <leader>gs :Gstatus<CR>
set diffopt+=vertical
hi DiffAdd cterm=NONE ctermbg=green ctermfg=black
hi DiffChange cterm=NONE ctermbg=110 ctermfg=black
hi DiffDelete cterm=NONE ctermbg=red ctermfg=black
hi DiffText cterm=NONE ctermbg=14 ctermfg=black


" VISUAL-SPLIT
xmap <leader>gsa <Plug>(Visual-Split-VSSplitAbove)

au User lsp_setup call lsp#register_server({                                    
            \ 'name': 'php-language-server',                                            
            \ 'cmd': {server_info->['php', expand('~/.vim/plugged/php-language-server/bin/php-language-server.php')]},
            \ 'whitelist': ['php'],                                                     
            \ })
