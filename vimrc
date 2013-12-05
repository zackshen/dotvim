scriptencoding utf-8
set nocompatible               " be iMproved
set encoding=utf-8
set fileencodings=utf-8,gbk
set term=screen-256color

" Bundles {
    if filereadable(expand("~/.vim/vim.bundles"))
        source ~/.vim/vim.bundles
    endif
" }

filetype plugin indent on
syntax on
source $VIMRUNTIME/vimrc_example.vim
behave mswin

" Formatting {
	set nowrap                      " wrap long lines
	set autoindent                  " indent at the same level of the previous line
	set shiftwidth=4                " use indents of 4 spaces
	set expandtab                   " tabs are spaces, not tabs
	set tabstop=4                   " an indentation every four columns
	set softtabstop=4               " let backspace delete indents
	autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    autocmd FileType go autocmd BufWritePre <buffer> Fmt
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
        set guifont=monaco\ for\ Powerline:h14
    else
        set t_Co=256
        let NERDTreeDirArrows=0
        color wombat256mod
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

    " Ack {
        let g:ackprg = 'ag --nogroup --nocolor --column'
        noremap <Leader>a :Ack 
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

" JQuery {
    au BufRead,BufNewFile *.js set syntax=jquery	
"}

" youcompleteme {
    let g:ycm_autoclose_preview_window_after_completion=1
    nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"}

" godef {
    let g:godef_split=0
" }

" Emmet {
    let g:user_emmet_expandabbr_key = ',e'
    let g:use_emmet_complete_tag = 1
" }

" Airline {
    let g:airline_symbols = {}
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_theme="powerlineish"
" }

" auto save {
if has("autocmd")
    autocmd! bufwritepost .vimrc source $MYVIMRC
endif
" }

" Json {
    nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
" }

" GitGutter {
    let g:gitgutter_enabled = 0
"
