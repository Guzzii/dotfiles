set shell=bash

filetype off

call plug#begin('~/.local/share/nvim/plugged')

" Just a shitload of color schemes.
Plug 'rakr/vim-one'
Plug 'mhinz/vim-janah'
Plug 'morhetz/gruvbox'
Plug 'jnurmine/Zenburn'
Plug 'tlhr/anderson.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'flrnprz/candid.vim'
Plug 'ntk148v/vim-horizon'
Plug 'joshdick/onedark.vim'
Plug 'jacoborus/tender.vim'
Plug 'Nequo/vim-allomancer'
Plug 'AlessandroYorba/Breve'
Plug 'Guzzii/vim-two-firewatch'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'arcticicestudio/nord-vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'chriskempson/vim-tomorrow-theme'

" Utility tools
" Plug 'tmhedberg/SimpylFold' " Better code foding
Plug 'dag/vim-fish'
Plug 'benmills/vimux'
" Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/vista.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'wellle/tmux-complete.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/rainbow_parentheses.vim'

" Plug 'w0rp/ale'
Plug 'sbdchd/neoformat'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' " Show git diff info in gutter
" Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'w0rp/ale' " Syntax checking
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'jpalardy/vim-slime'
Plug 'Yggdroot/indentLine'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" rust
Plug 'rust-lang/rust.vim', {'for': 'rust'}

" better python
Plug 'yhat/vim-docstring'
Plug 'Guzzii/python-syntax', {'for': 'python'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'vim-scripts/indentpython.vim', {'for': 'python'}
Plug 'heavenshell/vim-pydocstring', {'on': 'Pydocstring'}

" More useful statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

""""""""""""""""""""""""""
"  Colorscheme Settings  "
""""""""""""""""""""""""""

set background=dark

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

let g:PaperColor_Theme_Options = {
    \ 'theme': {
    \    'default': {
    \        'transparent_background': 0, 'allow_bold': 1, 'allow_italic': 1
    \     }
    \ },
    \ 'language': {'python': {'highlight_builtins': 1}}
\ }

let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\ }
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif

let g:jellybeans_use_gui_italics = 1

let g:gruvbox_contrast_dark = 'medium'

let g:nord_uniform_status_lines = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1

let g:onedark_terminal_italics = 1

let g:one_allow_italics = 1

let g:quantum_black = 1
let g:quantum_italics = 1

let g:srcery_italic = 1
let g:srcery_bold = 1

let g:two_firewatch_italics = 1

let g:vim_monokai_tasty_italic = 1

let ayucolor = 'dark'

colorscheme two-firewatch

" plugin settings
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""
"  Neovim Built-in Configuration  "
"""""""""""""""""""""""""""""""""""

set hidden
set guicursor=n-v-c:block,i-ci-ve:hor20,r-cr:hor20,o:hor50
   \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
   \,sm:block-blinkwait175-blinkoff150-blinkon175
set cursorline
set noshowmode
set signcolumn=auto

set relativenumber
set number
set linebreak
set mouse=a " allow mouse wheel scrolls inside vim
set clipboard=unnamed " normal clipboard bahaviour
" set path+=** " look subfolder in tabcompletion
set wildmenu
set wildignore=*.ipynb,*.pyc,*.swp

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
" set smartindent " Intellegently dedent / indent new lines based on rules.

set splitbelow
set splitright

" We have VCS -- we don't need this stuff.
" set nobackup " We have vcs, we don't need backups.
" set nowritebackup " We have vcs, we don't need backups.
" set noswapfile " They're just annoying. Who likes them?

set shortmess+=A " no message for existing swap file

" don't nag me when hiding buffers
" set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.
au FocusGained * :checktime

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
" set gdefault " use the `g` flag by default.

" Persistent undo
set undofile

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

if (has("nvim"))
    " find python for neovim
    let g:python3_host_prog = expand('~/anaconda3/bin/python')
    " let g:loaded_python_provider = 1 " disable python2 support
    let g:python_host_prog = expand('~/anaconda3/envs/staffing/bin/python')
endif

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
nnoremap : ;

" Motion for "next object". For example, "din(" would go to the next "()" pair
" and delete its contents.
onoremap an :<c-u>call <SID>NextTextObject('a')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i')<cr>

function! s:NextTextObject(motion)
  echo
  let c = nr2char(getchar())
  exe "normal! f".c."v".a:motion.c
endfunction

" Exit terminal model using Esc
tnoremap <leader><Esc> <C-c>
tnoremap <Esc> <C-\><C-n>

noremap <silent> <leader>vt :vs term://fish<Cr>
noremap <silent> <leader>st :sp term://fish<Cr>

" So we don't have to reach for escape to leave insert mode.
inoremap jk <esc>

" GitGutter
set updatetime=100

noremap <Leader>vl :VimuxRunLastCommand<CR>
noremap <Leader>vp :VimuxPromptCommand<CR>

" use spacebar for folding
" nnoremap <space> za

" use f4 to remove all training whitespace
nnoremap <silent> <F4> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nnoremap <silent> <space>f :Neoformat<CR>

" easy breakpoint python
au FileType python map <silent> <leader>o oimport pdb; pdb.set_trace()<esc>
au FileType python map <silent> <leader>O Oimport pdb; pdb.set_trace()<esc>

" I want to see my docstrings!
let g:SimpylFold_docstring_preview = 1
set foldmethod=indent
set foldlevel=99

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>:IndentLinesEnable<cr>

" Quick buffer switching - like cmd-tab'ing
" nnoremap <leader><leader> <c-^>

" FZF normal model map
noremap <C-p> :Files<Enter>

" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

""""""""""""""""""""
"  slime settings  "
""""""""""""""""""""
let g:slime_target = "neovim"
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
xmap <silent> <C-Return> <Plug>(SlimeRegionSend)
nmap <silent> <C-Return> <Plug>(SlimeParagraphSend)

" python docstring
let g:pydocstring_enable_mapping = 0
let g:pydocstring_templates_dir = expand('~/.local/share/nvim/plugged/vim-pydocstring/test/templates/numpy')

"""""""""""""""""""""""
"  NerdTree settings  "
"""""""""""""""""""""""

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = ['\.pyc$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>

""""""""""""""""""""""""
"  UltiSnips settings  "
""""""""""""""""""""""""

let g:UltiSnipsExpandTrigger = "<leader>l"
let g:ultisnips_python_style = "numpy"

""""""""""""""""""
"  COC settings  "
""""""""""""""""""

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

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> <space>g <Plug>(coc-definition)
nmap <silent> <space>n <Plug>(coc-references)

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> <space>k :call <SID>show_documentation()<CR>

function! s:GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList grep '.word
endfunction

" Remap for rename current word
nmap <space>r <Plug>(coc-rename)
" " Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>

" Using CocList
nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>a  <Plug>(coc-codeaction-selected)
vmap <silent> <space>a  <Plug>(coc-codeaction-selected)
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
nnoremap <space>w :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@
vnoremap <space>w :<C-u>call <SID>GrepFromSelected(visualmode())<CR>

" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" " Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')


"""""""""""""""""""
"  ncm2 settings  "
"""""""""""""""""""
" autocmd BufEnter * call ncm2#enable_for_buffer() " enable ncm2 for all buffers
" set completeopt=menuone,noselect,noinsert
" set shortmess+=c
" let g:ncm2#popup_delay = 10 " make it fast
" let g:ncm2#matcher = 'substrfuzzy' " Use new fuzzy based matches
" let g:ncm2#popup_limit = 20
" " Press enter key to trigger snippet expansion
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
" " Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Show status always
set laststatus=2

""""""""""""""""""""""""
"  Neoformat settings  "
""""""""""""""""""""""""

let g:neoformat_python_yapf = {
            \ 'exe': '/Users/ziwang/anaconda3/bin/yapf',
            \ }
let g:neoformat_python_isort = {
            \ 'exe': 'isort',
            \ 'args': ['-'],
            \ 'stdin': 1,
            \ }
let g:neoformat_run_all_formatters = 1
let g:neoformat_enabled_python = ['isort', 'yapf', 'docformatter']
let g:neoformat_enabled_cpp = ['clangformat']

""""""""""""""""""
"  ALE settings  "
""""""""""""""""""
" highlight link ALEWarningSign String
" highlight link ALEErrorSign Title
" let g:ale_sign_warning = '▲'
" let g:ale_sign_error = '✗'
" let g:ale_sign_column_always = 0
" let g:ale_lint_delay = 100
" let g:ale_lint_on_text_changed = 0
" let g:ale_lint_on_insert_leave = 0
" let g:ale_linters = {}
" let g:ale_fix_on_save = 1
" let g:ale_fixers = {
"     \ '*': ['remove_trailing_lines', 'trim_whitespace'],
"     \ 'python': ['yapf', 'isort']
"     \ }
" let g:ale_fix_on_save_ignore = {
"     \ 'python': ['yapf', 'isort']
"     \ }
" let g:ale_python_isort_options = '-ff FROM-FIRST --lines-between-types 1'

let g:indentLine_char = '¦'
let g:indentLine_first_char = '¦'
let g:indentLine_showFirstIndentLevel = 1

"""""""""""""""""""""""
"  Jedi-Vim Settings  "
"""""""""""""""""""""""

let g:jedi#auto_vim_configuration = 0  " dont change completeopt settings in jedi-vim
let g:jedi#show_call_signatures = 2
let g:jedi#show_call_signatures_delay = 10
let g:jedi#use_splits_not_buffers = 'winwidth'
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 0

" Supertab stuff
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<C-n>"

" Autopair
let g:AutoPairsFlyMode = 1
let g:AutoPairsMapCR = 0
let g:AutoPairsCenterLine = 0
let g:AutoPairsMapCh = 0
" inoremap <expr> <CR> strcharpart(getline('.'),getpos('.')[2]-1,1) == '}' ? "\<CR>\<Esc>O" : "<CR>"

""""""""""""""""""""""
"  Airline settings  "
""""""""""""""""""""""
let g:airline#extensions#branch#vcs_checks = []
let g:airline_powerline_fonts = 1
" let g:airline_left_sep=' '
" let g:airline_left_alt_sep = '|'
let g:airline_section_x = ''
let g:airline_section_z = '%3v ☰ %3p%%'
let g:airline_theme='twofirewatch'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" lightline
" let g:lightline = {
"     \ 'enable': {'statusline': 1, 'tabline': 0},
"     \ 'colorscheme': 'nord',
"     \ 'active': {
"     \    'left': [['mode', 'paste'],
"     \             ['readonly', 'filename', 'gitbranch', 'modified']],
"     \    'right': [['lineinfo'],
"     \              ['percent'],
"     \              ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok'],
"     \              ['fileencoding']]
"     \ },
"     \ 'component_function': {
"     \    'gitbranch': 'fugitive#head',
"     \ },
"     \ 'component_expand': {
"     \   'linter_warnings': 'LightlineLinterWarnings',
"     \   'linter_errors': 'LightlineLinterErrors',
"     \   'linter_ok': 'LightlineLinterOK'
"     \ },
"     \ 'component_type': {
"     \   'readonly': 'error',
"     \   'linter_warnings': 'warning',
"     \   'linter_errors': 'error'
"     \ }
" \}
"
" function! LightlineLinterWarnings() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"   return l:counts.total == 0 ? '' : printf('%d ▲', all_non_errors)
" endfunction
"
" function! LightlineLinterErrors() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"   return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
" endfunction
"
" function! LightlineLinterOK() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"   return l:counts.total == 0 ? '✓ ' : ''
" endfunction
"
" augroup LightLineOnALE
"   autocmd!
"   autocmd User ALEFixPre   call lightline#update()
"   autocmd User ALEFixPost  call lightline#update()
"   autocmd User ALELintPre  call lightline#update()
"   autocmd User ALELintPost call lightline#update()
" augroup end
