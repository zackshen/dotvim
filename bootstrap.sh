#########################################
#
# Install vim plugin with vundle
#
#########################################

VIM_RT=`pwd`
if [ ! -d $VIM_RT/bundle ]; then
    mkdir -p $VIM_RT/bundle
fi

if [ ! -e $VIM_RT/bundle/vundle ]; then
    echo "Installing Vundle"
    git clone https://github.com/gmarik/vundle.git $VIM_RT/bundle/vundle
fi

rm -rf ~/.vimrc
rm -rf ~/.vim

ln -s $VIM_RT/vimrc ~/.vimrc
ln -s $VIM_RT ~/.vim

vim -u ~/.vim/vim.bundles +BundleInstall +BundleClean +qall
