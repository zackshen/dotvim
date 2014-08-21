##How to build vim
    # git clone https://github.com/b4winckler/vim/tree/v7-4-402
    # cd vim
    # ./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --enable-perlinterp --enable-cscope --enable-luainterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/

##How to install
    # chmod +x install.sh,
    # run ./install.sh, and wait a mintue, maybe has some error would happen
    # if has error happened, exit it and open vim, run :BundleInstall

##Install YouCompleteMe
    # cd ~/.vim/bundle/YouCompleteMe/
    # ./install.sh --clang-completer

##Install Ternjs
    # cd ~/.vim/bundle/tern_for_vim
    # npm install 
