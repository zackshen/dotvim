set nocompatible               " be iMproved
set encoding=utf-8
set fileencodings=utf-8,gbk

filetype on
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
"}


" OmniComplete {
        if has("autocmd") && exists("+omnifunc")
            autocmd Filetype *
                \if &omnifunc == "" |
                \setlocal omnifunc=syntaxcomplete#Complete |
                \endif
        endif

        hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
        hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
        hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

        " some convenient mappings
        inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
        inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
        inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
        inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
        inoremap <expr> <C-d>      pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
        inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

        " automatically open and close the popup menu / preview window
        au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
        set completeopt=menu,preview,longest
" }

" Nerdtree {
    let NERDTreeIgnore=['\.pyc']
" }

" javascript {
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"
" }

" GUI Settings {
    "for windows
	"au GUIEnter * simalt ~x 
    " GVIM- (here instead of .gvimrc)
    set nu
    set nobackup
    if has('gui_running')
        set guioptions-=m
        set guioptions-=T           " remove the toolbar
	    set guioptions-=r
	    set guioptions-=L
        set lines=40                " 40 lines of text instead of 24,
        "color molokai
        color molokai
        " font
        "set guifont=monaco\ 12
        set guifont=monaco\ for\ Powerline:h14
        "set gfw=Microsoft\ YaHei\ 11
    else
        set t_Co=256
        color wombat256mod
        set hlsearch
        "set term=builtin_ansi       " Make arrow and other keys work
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
    
    " Run {
       func! CompileAndRun()
           if &filetype == 'go'
               :!go run %
           elseif &filetype == 'python'
               :!python %
           endif
       endf

       map <F5> :call CompileAndRun()<CR>
       map <F6> :!svn revert %<CR>
       map <F7> :!svn diff %<CR>
    " }

    " Save {
       map ,s :w<CR>
       map ,nq :q!<CR>
       map ,q :wq<CR>
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

au BufRead,BufNewFile *.js set syntax=jquery
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0

