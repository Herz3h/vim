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
" Plug 'mxw/vim-jsx'
" Plug 'pseewald/vim-anyfold' " SLOW AS HELL
Plug 'AndrewRadev/switch.vim'
" Plug 'LucHermitte/lh-tags'
Plug 'henrik/vim-indexed-search'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'phpactor/phpactor', {'for ': 'php', 'do': 'composer install'}
Plug 'Yggdroot/indentLine'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'lfv89/vim-interestingwords'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
Plug 'joshdick/onedark.vim'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install'  }
Plug 'brooth/far.vim'
" Plug 'chrisbra/csv.vim'

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Plug 'StanAngeloff/php.vim'

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
" set timeoutlen=1000 ttimeoutlen=0
" Use spaces instead of tabs
" set expandtab
set pastetoggle=<leader>p
" set clipboard=unnamedplus

set splitright
set splitbelow

" Be smart when using tabs ;)
" set smarttab

"s 1 tab == 4 spaces
" set shiftwidth=4
" set tabstop=4
set clipboard=unnamedplus

" ruby
set re=1
let g:ruby_path = "ruby-2.4.1"


" Theme
set t_Co=256
syntax enable
" set background=white
" colorscheme 256-grayvim
" let g:solarized_termcolors=256
" colorscheme seti
" let g:solarized_degrade=1
colo onedark

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
nmap ga <Plug>(EasyAlign)

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

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" noremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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
" let c='a'
" while c <= 'z'
"   exec "set <A-".c.">=\e".c
"   exec "imap \e".c." <A-".c.">"
"   let c = nr2char(1+char2nr(c))
" endw

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

"ALE
let ale_php_phpstan_executable = $HOME . "/Lysias5/vendor/bin/phpstan"

"SWITCH
" let g:switch_mapping = "gs"
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
" hi DiffAdd cterm=NONE ctermbg=green ctermfg=black
" hi DiffChange cterm=NONE ctermbg=110 ctermfg=black
" hi DiffDelete cterm=NONE ctermbg=red ctermfg=black
" hi DiffText cterm=NONE ctermbg=14 ctermfg=black

" GREPPER

" GUNDO
nnoremap <leader>u :GundoToggle<CR>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
runtime plugin/grepper.vim
let g:grepper.tools = ['rg', 'ag', 'ack-grep', 'grep', 'findstr', 'ack', 'pt', 'sift', 'git']

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

" VISUAL-SPLIT
xmap <leader>gsa <Plug>(Visual-Split-VSSplitAbove)

" STARTIFY
let g:startify_change_to_dir = 0



" CoC.VIM
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by otherlugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>i  <Plug>(coc-format-selected)
nmap <leader>i  <Plug>(coc-format-selected)

" Or use formatexpr for range format
set formatexpr=CocAction('formatSelected')

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }
" FAR
let g:far#source = 'rg'
"
" set diffopt+=internal,algorithm:patience

au User lsp_setup call lsp#register_server({                                    
      \ 'name': 'php-language-server',                                            
      \ 'cmd': {server_info->['php', expand('~/.vim/plugged/php-language-server/bin/php-language-server.php')]},
      \ 'whitelist': ['php'],                                                     
      \ })

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
