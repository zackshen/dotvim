##How to build vim
    # git clone https://github.com/b4winckler/vim/tree/v7-4-402
    # cd vim
    # ./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --enable-perlinterp --enable-cscope --enable-luainterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/

##How to install
    # chmod +x install.sh,
    # run ./install.sh, and wait a mintue, maybe has some error would happen
    # if has error happened, exit it and open vim, run :BundleInstall

##Install The_silver_searcher

[Reference This Guide](https://github.com/ggreer/the_silver_searcher)

##Install YouCompleteMe
    # cd ~/.vim/bundle/YouCompleteMe/
    # ./install.sh --clang-completer

##Install Ternjs
    # cd ~/.vim/bundle/tern_for_vim
    # npm install 

##Install Go ToolChain
because of `GFW`, we can't install some go package,
but you can set http_proxy for go get, like below

###start a goagent proxy, it will proxy at http://127.0.0.1:8087
    # python proxy.py

###install toolchain
    # http_proxy=127.0.0.1:8087 go get -v github.com/nsf/gocode
    # http_proxy=127.0.0.1:8087 go get -v code.google.com/p/go.tools/cmd/goimports
    # http_proxy=127.0.0.1:8087 go get -v code.google.com/p/rog-go/exp/cmd/godef
    # http_proxy=127.0.0.1:8087 go get -v code.google.com/p/go.tools/cmd/oracle
    # http_proxy=127.0.0.1:8087 go get -v github.com/kisielk/errcheck
    # http_proxy=127.0.0.1:8087 go get -v github.com/golang/lint/golint
    # http_proxy=127.0.0.1:8087 go get -v github.com/jstemmer/gotags

## Install vim-instant-markdown

[Reference The Guide](https://github.com/suan/vim-instant-markdown)

## Plugins

<table style="width:100%;">
<thead>
<th style="width:30%;">Name</th>
<th style="width:70%;">Desc</th>
</thead>
<tbody>
<tr>
    <td>vundle</td>
    <td></td>
</tr>
<tr>
    <td>CtrlP</td>
    <td></td>
</tr>
<tr>
    <td>ctrlp-funky</td>
    <td></td>
</tr>
<tr>
    <td>ack.vim</td>
    <td></td>
</tr>
<tr>
    <td>nerdtree</td>
    <td></td>
</tr>
<tr>
    <td>vim-surround</td>
    <td></td>
</tr>
<tr>
    <td>vim-colorschemes</td>
    <td></td>
</tr>
<tr>
    <td>vim-multiple-cursors</td>
    <td></td>
</tr>
<tr>
    <td>DrawIt</td>
    <td></td>
</tr>
<tr>
    <td>delimitMate</td>
    <td></td>
</tr>
<tr>
    <td>vim-airline</td>
    <td></td>
</tr>
<tr>
    <td>tabular</td>
    <td></td>
</tr>
<tr>
    <td>vim-commentary</td>
    <td></td>
</tr>
<tr>
    <td>syntastic</td>
    <td></td>
</tr>
<tr>
    <td>tagbar</td>
    <td></td>
</tr>
<tr>
    <td>pyflakes-vim</td>
    <td></td>
</tr>
<tr>
    <td>ultisnips</td>
    <td></td>
</tr>
<tr>
    <td>vim-snippets</td>
    <td></td>
</tr>
<tr>
    <td>TaskList.vim</td>
    <td></td>
</tr>
<tr>
    <td>TaskList.vim</td>
    <td></td>
</tr>
<tr>
    <td>vim-instant-markdown</td>
    <td></td>
</tr>
<tr>
    <td>vim-fugitive</td>
    <td></td>
</tr>
<tr>
    <td>vim-gitgutter</td>
    <td></td>
</tr>
<tr>
    <td>vsccommand.vim</td>
    <td></td>
</tr>
<tr>
    <td>vim-svnlog</td>
    <td></td>
</tr>
<tr>
    <td>vim-go</td>
    <td></td>
</tr>
<tr>
    <td>YouCompleteMe</td>
    <td></td>
</tr>
<tr>
    <td>jedi-vim</td>
    <td></td>
</tr>
<tr>
    <td>emmet-vim</td>
    <td></td>
</tr>
<tr>
    <td>vim-css-color</td>
    <td></td>
</tr>
<tr>
    <td>vim-less</td>
    <td></td>
</tr>
<tr>
    <td>vim-jade</td>
    <td></td>
</tr>
<tr>
    <td>vim-javascript</td>
    <td></td>
</tr>
<tr>
    <td>jquery.vim</td>
    <td></td>
</tr>
<tr>
    <td>tern_for_vim</td>
    <td></td>
</tr>
<tr>
    <td>vim-json</td>
    <td></td>
</tr>
<tr>
    <td>gist-vim</td>
    <td></td>
</tr>
<tr>
    <td>webapi-vim</td>
    <td></td>
</tr>

</tbody>
</table>
