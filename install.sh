rm -rf ~/.vimrc
rm -rf ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd` ~/.vim

git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git submodule add git://github.com/msanders/snipmate.vim.git bundle/vim-snipmate
git submodule add git://github.com/kien/ctrlp.vim.git bundle/vim-ctrlp
git submodule add git://github.com/mileszs/ack.vim.git bundle/vim-ack
git submodule add git://github.com/Shougo/neocomplcache.git bundle/vim-neocomplcache
git submodule add git://github.com/scrooloose/nerdtree.git bundle/vim-nerdtree
git submodule add git://github.com/tpope/vim-surround.git bundle/vim-surround
git submodule add git://github.com/pangloss/vim-javascript.git bundle/vim-javascript
git submodule add git://github.com/flazz/vim-colorschemes.git bundle/vim-colorschemes
git submodule add git://github.com/Lokaltog/vim-powerline.git bundle/vim-powerline

git submodule init
git submodule update
