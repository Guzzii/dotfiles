function! myspacevim#before() abort
    nnoremap ; :
    nnoremap : ;

    set splitbelow
    set splitright
    set ignorecase " case insensitive search

    " GitGutter
    set updatetime=100

    let g:python_highlight_all = 1
    let g:gruvbox_contrast_dark = 'medium'
    let g:gruvbox_bold = '1'
    let g:gruvbox_italic = '1'

    " Clear match highlighting
    noremap <leader><space> :noh<cr>:call clearmatches()<cr>:IndentLinesEnable<cr>

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

    " easy breakpoint python
    au FileType python map <silent> <leader>o oimport pdb; pdb.set_trace()<esc>
    au FileType python map <silent> <leader>O Oimport pdb; pdb.set_trace()<esc>

    """""""""""""""
    "  AutoPairs  "
    """""""""""""""

    let g:AutoPairsFlyMode = 1
    let g:AutoPairsMapCR = 0
    let g:AutoPairsCenterLine = 0
    let g:AutoPairsMapCh = 0

    """""""""""""
    "  Airline  "
    """""""""""""

    let g:airline_theme = 'twofirewatch'
    let g:airline#extensions#branch#vcs_checks = []
    let g:airline_powerline_fonts = 1
    " let g:airline_left_sep=' '
    " let g:airline_left_alt_sep = '|'
    let g:airline_section_x = ''
    let g:airline_section_z = '%3v ☰ %3p%%'
    " let g:airline#extensions#tabline#enabled = 1
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
    " let g:airline#extensions#tabline#formatter = 'unique_tail'

    """"""""""""""""""""""""
    "  Neoformat settings  "
    """"""""""""""""""""""""
    let g:neoformat_python_yapf = {
                \ 'exe': 'yapf',
                \ }
    let g:neoformat_python_isort = {
                \ 'exe': 'isort',
                \ 'args': ['-', '--thirdparty', 'jardin'],
                \ 'stdin': 1,
                \ }
    let g:neoformat_run_all_formatters = 1
    let g:neoformat_enabled_python = ['isort', 'yapf', 'docformatter']
    let g:neoformat_enabled_cpp = ['clangformat']

    """""""""""""""""""""""
    "  Jedi-Vim Settings  "
    """""""""""""""""""""""
    let g:jedi#auto_vim_configuration = 0  " dont change completeopt settings in jedi-vim
    let g:jedi#show_call_signatures = 1
    let g:jedi#show_call_signatures_delay = 10
    let g:jedi#use_splits_not_buffers = 'winwidth'
    let g:jedi#popup_on_dot = 0
    let g:jedi#completions_enabled = 0

    """"""""""""""""""""""""""""""
    "  New SpaceVim Key Binding  "
    """"""""""""""""""""""""""""""
    call SpaceVim#custom#SPCGroupName(['o'], '+CoC')
    call SpaceVim#custom#SPC('nore', ['o', 'd'], '<C-u>CocList diagnostics', 'diagnostics', 1)
    call SpaceVim#custom#SPC('nore', ['o', 'o'], '<C-u>CocList outline', 'outline', 1)
    call SpaceVim#custom#SPC('nore', ['o', 'c'], '<C-u>CocList commands', 'commands', 1)
    call SpaceVim#custom#SPC('nore', ['o', 'l'], '<C-u>CocList', 'coclist', 1)
    call SpaceVim#custom#SPC('nore', ['o', 'g'], "call CocAction('jumpDefinition')", 'definition', 1)
    call SpaceVim#custom#SPC('nore', ['o', 'n'], "call CocAction('jumpReferences')", 'references', 1)
    call SpaceVim#custom#SPC('nore', ['o', 'r'], "call CocActionAsync('rename')", 'rename', 1)
    call SpaceVim#custom#SPC('nore', ['o', ']'], "call CocActionAsync('diagnosticNext')", 'next diagnostics', 1)
    call SpaceVim#custom#SPC('nore', ['o', '['], "call CocActionAsync('diagnosticPrevious')", 'previous diagnostics', 1)
endfunction


function! myspacevim#after() abort

    """"""""""""""
    "  Coc.Nvim  "
    """"""""""""""

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

    """"""""""""""""""""""""
    "  UltiSnips settings  "
    """"""""""""""""""""""""

    let g:UltiSnipsExpandTrigger = '<C-j>'
    let g:UltiSnipsJumpForwardTrigger = '<C-j>'
    let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
    let g:ultisnips_python_style = 'numpy'

endfunction
