##How to build vim
    # git clone https://github.com/b4winckler/vim/tree/v7-4-402
    # cd vim
    # ./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --enable-perlinterp --enable-cscope --enable-luainterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/

##How to install
    # chmod +x install.sh,
    # run ./install.sh, and wait a mintue, maybe has some error would happen
    # if has error happened, exit it and open vim, run :BundleInstall

##Install The_silver_searcher

    https://github.com/ggreer/the_silver_searcher

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
