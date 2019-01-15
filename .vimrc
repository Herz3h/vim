let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
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
Plug 'Raimondi/delimitMate'
" Plug 'vim-scripts/auto-pairs-gentle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/vim-easy-align'
" Plug 'tmhedberg/matchit'
Plug 'andymass/vim-matchup'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/neomru.vim'
Plug 'wellle/targets.vim'
Plug 'tommcdo/vim-exchange'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
" Plug 'mxw/vim-jsx'
" Plug 'pseewald/vim-anyfold' " SLOW AS HELL
Plug 'AndrewRadev/switch.vim'
" Plug 'LucHermitte/lh-tags'
Plug 'henrik/vim-indexed-search'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'lfv89/vim-interestingwords'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
Plug 'joshdick/onedark.vim'
Plug 'brooth/far.vim'
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install() }}

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'phpactor/ncm2-phpactor'
Plug 'wellle/tmux-complete.vim'
Plug 'ncm2/ncm2-tagprefix'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-match-highlight'

Plug 'vim-utils/vim-ruby-fold'
Plug 'vim-ruby/vim-ruby'
Plug 'mhinz/vim-grepper'
Plug 'terryma/vim-multiple-cursors'

Plug 'wellle/visual-split.vim'
Plug 'vim-airline/vim-airline'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'sodapopcan/vim-twiggy'
Plug 'ap/vim-buftabline'
Plug 'simeji/winresizer'
" Plug 'lilydjwg/colorizer'
Plug 'sjl/gundo.vim'

call plug#end()

" General Configuration
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
" set smartindent
set number
set signcolumn=yes
set guifont=Monaco:h11

" Use spaces instead of tabs
set expandtab

set splitright
set splitbelow

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" autoread and autowrite
augroup save
  au!
  au FocusLost * wall
augroup END
set nohidden
set nobackup
set noswapfile
set nowritebackup
set autoread
set autowrite
set autowriteall

filetype plugin on


" ruby
set re=1
let g:ruby_path = "ruby-2.4.1"


" Theme
" set t_Co=256
syntax enable
colo turtles

" Timeout
set timeout
set ttimeout
set timeoutlen=500

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

"############### PLUGINS ##################
" easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Ruby fold
let g:ruby_fold_lines_limit = 200

" Profiling bindings
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<CR>:exe ":profile func *"<CR>:exe ":profile file *"<CR>
nnoremap <silent> <leader>DP :exe ":profile pause"<CR>
nnoremap <silent> <leader>DC :exe ":profile continue"<CR>
nnoremap <silent> <leader>DQ :exe ":profile pause"<CR>:noautocmd qall!<CR>


" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" FZF
nnoremap <silent> <leader>f :FZF<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>c :Commits<CR>
nnoremap <silent> <leader>h :History<CR>
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%CR"'
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
let $FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --bind=up:previous-history,down:next-history,ctrl-p:up,ctrl-n:down'
let $FZF_DEFAULT_COMMAND= 'rg --files --hidden'
" command ! -bang -nargs=* Rg
"             \ call fzf#vim#grep(
"             \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
"             \   <bang>0 ? fzf#vim#with_preview('up:60%')
"             \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"             \   <bang>0)


"  YANKSTACK
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" VINEGAR
nmap <leader>n :Explore<CR>

" EASYGREP
set grepprg=ag
let g:EasyGrepCommand=1
let g:EasyGrepRecursive=1

" PHPACTOR
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

let anyfold_activate=1
let anyfold_fold_comments=1
set foldlevel=1
hi Folded term=NONE cterm=NONE

" DISPATCH
nmap <leader>t :Dispatch<cr>

"ALE
let ale_php_phpstan_executable = $HOME . "/Lysias5/vendor/bin/phpstan"
nmap <silent> <leader>aj :ALENext<cr>


"SWITCH
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
map <leader>gd :Gdiff<CR>
map <leader>gh :GitGutterStageHunk<CR>
map <leader>gb :Gblame<CR>
map <leader>gw :Gwrite<CR>
set diffopt+=vertical


" GUNDO
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_prefer_python3 = 1

" GREPPER
nmap <leader>g :Grepper<CR>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
runtime plugin/grepper.vim
let g:grepper.tools = ['rg', 'ag', 'ack-grep', 'grep', 'findstr', 'ack', 'pt', 'sift', 'git']

" VISUAL-SPLIT
xmap <leader>gsa <Plug>(Visual-Split-VSSplitAbove)

" STARTIFY
let g:startify_change_to_dir = 0


" FAR
let g:far#source = 'rg'

" set diffopt+=internal,algorithm:patience

" NCM2
" autocmd BufEnter * call ncm2#enable_for_buffer()
" set completeopt=noinsert,menuone,noselect
" set shortmess+=c
" inoremap <c-c> <ESC>
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inorema  <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" NCM2 Match Highlight
let g:ncm2#match_highlight='bold'

" MOVE
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

" AUTO PAIRS
" inoremap (; (<CR>);<C-c>O
" inoremap (, (<CR>),<C-c>O
" inoremap {; {<CR>}<C-c>O
" inoremap {, {<CR>},<C-c>O
" inoremap [; [<CR>]<C-c>O
" inoremap [, [<CR>],<C-c>O
" let g:AutoPairsUseInsertedCount = 1


" ZSHRC
" TODO: Find a way to add this to zshrc
" # Allow Ctrl-z to toggle between suspend and resume
" function Resume {
"   fg
"   zle push-input
"   BUFFER=""
"   zle accept-line
" }
" zle -N Resume
" bindkey "^Z" Resume
