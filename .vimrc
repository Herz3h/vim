let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/vim-easy-align'
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
Plug 'AndrewRadev/switch.vim'
Plug 'henrik/vim-indexed-search'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
" Plug 'lfv89/vim-interestingwords'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
Plug 'joshdick/onedark.vim'
Plug 'brooth/far.vim'
" Plug 'TaDaa/vimade'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'ntpeters/vim-better-whitespace'
Plug 'benmills/vimux'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'vim-utils/vim-ruby-fold'
Plug 'vim-ruby/vim-ruby'
Plug 'mhinz/vim-grepper'
Plug 'terryma/vim-multiple-cursors'

Plug 'wellle/visual-split.vim'
Plug 'vim-airline/vim-airline'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'mitsuhiko/vim-jinja'
Plug 'ap/vim-buftabline'
Plug 'simeji/winresizer'
Plug 'sjl/gundo.vim'
Plug 'svermeulen/vim-easyclip'
Plug 'romainl/vim-qf'

call plug#end()


" General Configuration
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
" set smartindent
set number
set signcolumn=yes
set guifont=Monaco:h11
set relativenumber

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
colo molokayo
hi Normal ctermbg=233

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
nnoremap <silent> <leader>bf :Buffers<CR>
nnoremap <silent> <leader>bl :b#<CR>
nnoremap <silent> <leader>y :FZFYank<CR>
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

" AIRLINE
set laststatus=2
set noshowmode
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#flags = 'f'

let anyfold_activate=1
let anyfold_fold_comments=1
set foldlevel=1
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
let g:ale_fixers["php"] = ["php_cs_fixer", "trim_whitespace"]
let g:ale_fixers["javascript"] = ["eslint", "trim_whitespace"]
let g:ale_fix_on_save=1
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>af :ALEFix<cr>


"SWITCH
let g:switch_custom_definitions =
            \ [
            \ ['true', 'false'],
            \ { '^\s*\$\([^\s;]*\);': '\$this->\1 = \$\1;' }
            \ ]

" SURROUND
nmap <silent> dsB diB"_dkP`[<`]

" FUGITIVE
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gh :GitGutterStageHunk<CR>
nmap <leader>gb :Gblame<CR>
nmap <leader>gw :Gwrite<CR>
" " https://github.com/tpope/vim-fugitive#faq
" " patch that automatically opens the quickfix window after :Ggrep
autocmd QuickFixCmdPost *grep* cwindow
" " Prevent Glog output to ternimal instead of quickfix window
" " https://github.com/tpope/vim-fugitive/issues/677
nnoremap <leader>gl :silent! Glog<CR> :redraw!<CR>
set diffopt+=vertical


" GUNDO
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_prefer_python3 = 1

" GREPPER
nmap <leader>g :Grepper<CR>
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

au BufRead,BufNewFile *.twig set filetype=htmljinja

" EASYCLIP
nnoremap gm m
function! s:yank_list()
  redir => ys
  silent Yanks
  redir END
  return split(ys, '\n')[1:]
endfunction

function! s:yank_handler(reg)
  if empty(a:reg)
    echo "aborted register paste"
  else
    let token = split(a:reg, ' ')
    execute 'Paste' . token[0]
  endif
endfunction

command! FZFYank call fzf#run({
\ 'source': <sid>yank_list(),
\ 'sink': function('<sid>yank_handler'),
\ 'options': '-m',
\ 'down': 12
\ })
let g:EasyClipEnableBlackHoleRedirect = 0

" GUTENTAGS
" let g:gutentags_cache_dir=$HOME . '/.tags/'


" GUNDO
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  " Create dirs
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
endif

" COC.VIM
if has('nvim')
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
  " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
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

  " Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Use `[c` and `]c` for navigate diagnostics
  " nmap <silent> [c <Plug>(coc-diagnostic-prev)
  " nmap <silent> ]c <Plug>(coc-diagnostic-next)

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
  nmap <leader>crn <Plug>(coc-rename)

  " Remap for format selected region
  vmap <leader>cf  <Plug>(coc-format-selected)
  nmap <leader>cf  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
  vmap <leader>ca  <Plug>(coc-codeaction-selected)
  nmap <leader>ca  <Plug>(coc-codeaction-selected)

  " Remap for do codeAction of current line
  nmap <leader>cac  <Plug>(coc-codeaction)
  " Fix autofix problem of current line
  nmap <leader>cqf  <Plug>(coc-fix-current)

  " Use `:Format` for format current buffer
  command! -nargs=0 Format :call CocAction('format')

  " Use `:Fold` for fold current buffer
  command! -nargs=? Fold :call CocAction('fold', <f-args>)


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
