scriptencoding utf-8
set nocompatible               " be iMproved
set encoding=utf-8
set fileencodings=utf-8,gbk
set term=screen-256color
set iskeyword+=-
set mouse-=a
set selection=inclusive
set selectmode=mouse,key

" Bundles {
    if filereadable(expand("~/.vim/vim.bundles"))
        source ~/.vim/vim.bundles
    endif
" }

" Bundles {
    if filereadable(expand("~/.vim/vim.ignore"))
        source ~/.vim/vim.ignore
    endif
" }

filetype plugin indent on
syntax on
source $VIMRUNTIME/vimrc_example.vim
behave mswin
set iskeyword+=-

" auto save {
    if has("autocmd")
        autocmd! bufwritepost .vimrc source $MYVIMRC
    endif
" }

" Undo {
    set undolevels=1000         " How many undos
    set undoreload=10000        " number of lines to save for undo
    if v:version >= 730
        set undofile            " keep a persistent backup file
        set undodir=/tmp/vimundo/
    endif
" }

" Formatting {
	set nowrap                      " wrap long lines
	set autoindent                  " indent at the same level of the previous line
	set shiftwidth=4                " use indents of 4 spaces
	set expandtab                   " tabs are spaces, not tabs
	set tabstop=4                   " an indentation every four columns
	set softtabstop=4               " let backspace delete indents
	autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    " autocmd FileType go autocmd BufWritePre <buffer> Fmt
"}

" Nerdtree {
    let NERDTreeIgnore=['\.pyc']
" }

" javascript {
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"
" }

" GUI Settings {
    set nu
    set nobackup
    set noswapfile
    set cursorline
    set hlsearch
    set incsearch
    if has('gui_running')
        set guioptions-=m
        set guioptions-=T
	    set guioptions-=r
	    set guioptions-=L
        set lines=40                " 40 lines of text instead of 24,
        color molokai
        set guifont=Source\ Code\ Pro\ for\ Powerline:h14
    else
        set t_Co=256
        let NERDTreeDirArrows=0
        color wombat256mod
        set guifont=Source\ Code\ Pro\ for\ Powerline:h14
    endif
" }


" KeyMapping {
    let mapleader = ','
    " LineMoveing {
        nmap <M-j> mz:m+<cr>`z
        nmap <M-k> mz:m-2<cr>`z
        vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
        vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
    "}

    " Grepper {
        nnoremap <leader>a :Grepper<cr>
    " }

    " Nerdtree {
        map <F4> :NERDTreeToggle<CR>
        imap <F4> <ESC>:NERDTreeToggle<CR>

    "}

    " Save {
       map ,s :w<CR>
       map ,nq :q!<CR>
       map ,q :wqa<CR>
    " }
" }

" status line {
    func! GetPWD()
        return substitute(getcwd(), "", "", "g")
    endf

    set ch=1
    set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P]
    set ls=2 
    set wildmenu 
" }

" {
    au BufRead,BufNewFile *.ts  setlocal filetype=typescript
    au BufRead,BufNewFile *.tsx setlocal filetype=typescript.jsx
" }

" youcompleteme {
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_seed_identifiers_with_syntax=1
    let g:ycm_auto_trigger = 1
    nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
    au BufRead,BufNewFile *.ts nnoremap <leader>g :YcmCompleter GoToDefinition<CR>
    if !exists("g:ycm_semantic_triggers")
        let g:ycm_semantic_triggers = {}
    endif
    let g:ycm_semantic_triggers['typescript'] = ['.']
    let g:ycm_semantic_triggers['typescript.jsx'] = ['.']

    let g:ycm_python_binary_path = '/Users/zack/anaconda2/bin/python'
    let g:ycm_log_level = 'debug'
"}

" ale {
    "let g:ale_sign_column_always = 1
    let g:ale_linters = {
    \   'typescript': ['tslint'],
    \   'typescript.jsx': ['tslint']
    \}

    let g:ale_fixers = {
    \   'typescript': ['tslint'],
    \   'typescript.jsx': ['tslint']
    \}
" }

" ultisnips {
    let g:UltiSnipsExpandTrigger="<leader>s"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" }

" Emmet {
    let g:user_emmet_expandabbr_key = ',e'
    let g:use_emmet_complete_tag = 1
" }

" Airline {
    let g:airline_powerline_fonts=0
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_theme             = 'badwolf'
    let g:airline_left_sep          = ''
    let g:airline_left_alt_sep      = ''
    let g:airline_right_sep         = ''
    let g:airline_right_alt_sep     = ''
" }

" {
    let g:ale_sign_column_always = 1
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" }

" Json {
    nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
" }

" GitGutter {
    let g:gitgutter_enabled = 0
"

" Ctrl-p {
    let g:ctrlp_extensions = ['funky']
    let g:ctrlp_max_height=15
    if executable('ag')
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    endif
    let g:ctrlp_funky_syntax_highlight = 1
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
      \ 'file': '\v\.(exe|so|dll)$'
      \ }
    nnoremap <Leader>fu :CtrlPFunky<Cr>
    nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" }

" tern {
    let g:tern_map_keys=1
    let g:tern_show_argument_hints='on_hold'
    let g:tern_show_signature_in_pum=1
" }

" vim-go {
    let g:go_bin_path = "/home/vagrant/documents/go/bin/"
    let g:go_disable_autoinstall = 1

    " type info
    au FileType go nmap <Leader>i <Plug>(go-info)
    " godoc
    au FileType go nmap <Leader>gd <Plug>(go-doc)
    au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
    au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
    " go-run go-build go-test
    au FileType go nmap <leader>r <Plug>(go-run)
    au FileType go nmap <leader>b <Plug>(go-build)
    au FileType go nmap <leader>t <Plug>(go-test)
    " godef
    au FileType go nmap <leader>g <Plug>(go-def)
    au FileType go nmap <Leader>ds <Plug>(go-def-split)
" }

" jsx {
    let g:jsx_ext_required = 0
" }

" editorconfig {
    let g:EditorConfig_core_mode = 'external_command'
" }
