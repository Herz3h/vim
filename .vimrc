let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
" let g:polyglot_disabled = ['typescript']
if has('macunix')
    let g:python3_host_prog = '/usr/local/Cellar/python@3.10/3.10.8/bin/python3'
endif

call plug#begin('~/.vim/plugged')


" THEMES
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rafalbromirski/vim-aurora'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'chuling/ci_dark'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" UI
Plug 'nvim-lua/lsp-status.nvim'
Plug 'liuchengxu/eleline.vim'

" TPOPE
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'

" NAVIGATION
Plug 'easymotion/vim-easymotion'

" AUTOCOMPLETE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/tmux-complete.vim'
Plug 'SirVer/ultisnips'
Plug 'algotech/ultisnips-php'
Plug 'honza/vim-snippets'
Plug 'neovim/nvim-lspconfig'

" FILES
Plug 'nvim-lua/plenary.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}


" GIT
" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'whiteinge/diffconflicts'

" LINT
Plug 'w0rp/ale'

" FORMAT
Plug 'sheerun/vim-polyglot'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'

" MOTIONS
Plug 'michaeljsmith/vim-indent-object'
Plug 'wellle/targets.vim'
Plug 'machakann/vim-sandwich'
Plug 'kana/vim-operator-user'

" SEARCH
Plug 'henrik/vim-indexed-search'
Plug 'mhinz/vim-grepper'
Plug 'dkprice/vim-easygrep'

" MISC
Plug 'romainl/vim-qf'
Plug 'simeji/winresizer'
Plug 'sjl/gundo.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'mhinz/vim-startify'
Plug 'benmills/vimux'
Plug '907th/vim-auto-save'
Plug 'aserebryakov/vim-todo-lists'
Plug 'terryma/vim-multiple-cursors'
Plug 'svermeulen/vim-yoink'
Plug 'jiangmiao/auto-pairs'
Plug 'AndrewRadev/linediff.vim'
" Plug 'andymass/vim-matchup'
Plug 'mbbill/undotree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'williamboman/mason.nvim'

" PHP
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'tobyS/php-accessors.vim'
Plug 'docteurklein/php-getter-setter.vim'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'tobyS/pdv'

" HTML
Plug 'mattn/emmet-vim'

" TWIG
Plug 'nelsyeung/twig.vim'

" RUBY
Plug 'vim-utils/vim-ruby-fold'
Plug 'vim-ruby/vim-ruby'

" 

call plug#end()


" General Configuration
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
" set smartindent
set number
set signcolumn=yes
set guifont=Monaco:h11
" set relativenumber

" Use spaces instead of tabs
set expandtab

set splitright
set splitbelow

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
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
set foldenable
set lazyredraw

filetype plugin on

set isk+= 
iabbrev {  { 


set regexpengine=1
" ruby
" set re=1
" let g:ruby_path = "ruby-2.4.1"


" Theme
syntax enable
set termguicolors
colorscheme adventurous
" colo monokai-chris
" set background=dark
" highlight DiffChange cterm=bold ctermfg=10 ctermbg=19 gui=none guifg=bg guibg=Red
" highlight DiffText   cterm=bold ctermfg=none ctermbg=57 gui=none guifg=bg guibg=Yellow
" hi Normal ctermbg=233

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
map <leader>ve :e ~/.vimrc<CR>
map <leader>pe :e app/config/parameters.yml<CR>
map <leader>vr :so ~/.vimrc<CR>
nnoremap <leader>p "0p
nnoremap <leader>P "0P

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
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<CR>:exe ":profile func *"<CR>:exe ":profile file *"<CR>:echo "Profiling started"<CR>
nnoremap <silent> <leader>DP :exe ":profile pause"<CR>
nnoremap <silent> <leader>DC :exe ":profile continue"<CR>
nnoremap <silent> <leader>DQ :exe ":profile pause"<CR>:noautocmd qall!<CR>


" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" FZF
nnoremap <leader>f :Files<cr>
nnoremap <leader>gr :Rg<cr>
nnoremap <leader>bf :Buffers<cr>
nnoremap <silent> <leader>bl :b#<CR>
let $FZF_DEFAULT_COMMAND='rg --files --follow --hidden'


"  YANKSTACK
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste



" EASYGREP
set grepprg=ag
let g:EasyGrepCommand=1
let g:EasyGrepRecursive=1

" set foldlevel=1
hi Folded term=NONE cterm=NONE

" DISPATCH
nmap <leader>td :Dispatch<cr>

"ALE
let ale_php_phpstan_executable = "./vendor/bin/phpstan"
let ale_php_phpstan_options = "--level max"
let ale_php_cs_fixer_executable = "./vendor/friendsofphp/php-cs-fixer/php-cs-fixer"
let ale_php_cs_fixer_options = "--rules='{\"braces\": {\"position_after_control_structures\": \"next\", \"position_after_functions_and_oop_constructs\": \"next\", \"position_after_anonymous_constructs\": \"next\"} }'"
let g:ale_virtualtext_cursor=1
let g:ale_fixers = {}
let g:ale_fixers["md"] = ["trim_whitespace"]
let g:ale_fixers["php"] = ["php_cs_fixer", "trim_whitespace"]
let g:ale_fixers.javascript = ["eslint", "trim_whitespace"]
let g:ale_fixers["ruby"] = ["trim_whitespace"]
let g:ale_fixers["vue"] = ["eslint", "trim_whitespace"]
let g:ale_fixers["yaml"] = ["trim_whitespace"]
let g:ale_fixers["twig"] = ["trim_whitespace"]
let g:ale_fix_on_save=1
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>n :ALENext<cr>
nmap <silent> <leader>af :ALEFix<cr>


"SWITCH
let g:switch_custom_definitions =
            \ [
            \ ['true', 'false'],
            \ { '^\s*\$\([^\s;]*\);': '\$this->\1 = \$\1;' }
            \ ]

" SURROUND
" nmap <silent> dsB diB"_dkP`[<`]

" FUGITIVE
nmap <leader>gs :Git<CR>
nmap <leader>gd :Gdiffsplit!<CR>
nmap <leader>gh :GitGutterStageHunk<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gw :Gwrite<CR>
" " https://github.com/tpope/vim-fugitive#faq
" " patch that automatically opens the quickfix window after :Ggrep
autocmd QuickFixCmdPost *grep* cwindow
" " Prevent Glog output to ternimal instead of quickfix window
" " https://github.com/tpope/vim-fugitive/issues/677
nnoremap <leader>gl :silent! Glog<CR> :redraw!<CR>
set diffopt+=vertical



" GREPPER
nnoremap <leader>g :Grepper<cr>
nmap gf <plug>(GrepperOperator)
xmap gf <plug>(GrepperOperator)
runtime plugin/grepper.vim
let g:grepper.tools = ['rg', 'ag', 'ack-grep', 'grep', 'findstr', 'ack', 'pt', 'sift', 'git']

" VISUAL-SPLIT
xmap <leader>gsa <Plug>(Visual-Split-VSSplitAbove)

" STARTIFY
let g:startify_change_to_dir = 0


" FAR
let g:far#source = 'rg'

" TAGBAR
" autocmd VimEnter * TagbarOpen
let g:tagbar_type_javascript = {
      \ 'ctagstype': 'javascript',
      \ 'kinds': [
      \ 'A:arrays',
      \ 'P:properties',
      \ 'T:tags',
      \ 'O:objects',
      \ 'G:generator function',
      \ 'F:functions',
      \ 'C:constructors/classes',
      \ 'M:methods',
      \ 'V:variables',
      \ 'I:imports',
      \ 'E:exports',
      \ 'S:styled components'
      \ ]}


set diffopt+=internal,algorithm:patience
set diffopt+=iwhiteall
set diffopt-=vertical
set diffopt+=horizontal

set timeout ttimeoutlen=50


nmap <leader>k :cp<CR>
nmap <leader>j :cn<CR>

" VIMADE
" let g:vimade = {
"   \ "normalid": '',
"   \ "basefg": '233',
"   \ "basebg": '233',
"   \ "fadelevel": 0.4,
"   \ "colbufsize": 30,
"   \ "rowbufsize": 30,
"   \ "checkinterval": 32,
"   \ }


nnoremap <esc> :noh<return><esc>

" au BufNewFile,BufRead *.html,*.twig set filetype=jinja


" GUTENTAGS
" let g:gutentags_cache_dir=$HOME . '/.tags/'

" GUNDO
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

let myUndoDir = expand(vimDir . '/undodir')
" Create dirs
call system('mkdir ' . vimDir)
call system('mkdir ' . myUndoDir)
let &undodir = myUndoDir

set undofile

" COC.VIM
if has('nvim') && match(&runtimepath, 'coc.nvim') != -1
let g:coc_node_path = '/Users/jpldev/.nvm/versions/node/v14.20.0/bin/node'
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
nmap <silent> <leader>a <Plug>(coc-codeaction-cursor)


" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction-line)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)


" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')



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



" Using CocList
" Show commands
nnoremap <silent> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>cp  :<C-u>CocListResume<CR>
endif

" VIMUX
nmap <leader>t :VimuxRunLastCommand<CR>

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
"
"

" ULTISNIPS
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

" CLAP
map <leader>cl :Clap grep<CR>

" Format XMl
com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

" PEAR TREE
let g:pear_tree_pairs = {
            \ '(': {'closer': ')'},
            \ '[': {'closer': ']'},
            \ '{': {'closer': '}'},
            \ "'": {'closer': "'"},
            \ '"': {'closer': '"'},
            \ '{{': {'closer': '}}'},
            \ '{%': {'closer': '%}'}
            \ }

" PHPACTOR
" Include use statement
nmap <Leader>gu :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>gm :call phpactor#ContextMenu()<CR>

" Transform the classes in the current file
nmap <Leader>gt :call phpactor#Transform()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ge :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ge :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
" vmap <silent><Leader>gm :<C-U>call phpactor#ExtractMethod()<CR>

" VIM MOVE
if has('macunix')
  nnoremap Ï :m .+1<CR>==
  nnoremap È :m .-2<CR>==

  inoremap Ï <Esc>:m .+1<CR>==gi
  inoremap È <Esc>:m .-2<CR>==gi

  vnoremap Ï :m '>+1<CR>gv=gv
  vnoremap È :m '<-2<CR>gv=gv
endif


" PDV
let g:phpacc_template_dir = "$HOME/.vim/plugged/php-accessors.vim/templates"

" AUTO CLOSE
inoremap (; ();<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

" POLYGLOT
let g:vue_pre_processors = ['less']
let loaded_matchparen = 0

" set redrawtime=10000
" set synmaxcol=0

" AUTOSAVE
" let g:auto_save = 1

" YOINK
nmap <c-p> <plug>(YoinkPostPasteSwapBack)

" autocmd VimEnter * RandomColorScheme

" PHP.vim
let php_html_in_heredoc = 0
let php_html_in_nowdoc = 0
let php_html_load = 0
let php_sql_query = 0
let php_sql_heredoc = 0
let php_sql_nowdoc = 0
let php_ignore_doc = 1

" EASYGREP
let g:EasyGrepCommand='rg'
" au FileType typescript setlocal syntax=OFF


" VINEGAR
nmap <leader>e :Explore<CR>

highlight Pmenu ctermbg=black guibg=black

" CAW.VIM
" let g:caw_operator_keymappings = 1
" nmap gc <Plug>(caw:hatpos:toggle:operator)
" nmap gcc <Plug>(caw:hatpos:toggle:operator)

" PHPDOCUMENTOR
nnoremap <leader>pd :call pdv#DocumentCurrentLine()<CR>
let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }

" AUTOPAIRS
let g:AutoPairsMultilineClose = 0


lua <<EOF
EOF

