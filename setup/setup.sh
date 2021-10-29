echo Start setting up for conf share

BASE=`pwd`/..
echo $BASE

if [ $1 == 'emacs' ] ; then
    echo emacs setup begins
    cd ~; ln -s $BASE/emacs.d .emacs.d
fi

if [ $1 == 'vim' ] ; then
    echo vim setup begins
    cd ~; ln -s $BASE/general_vim .vim
fi

if [ $1 == 'neovim' ] ; then
    echo neovim setup begins
	mkdir -p ~/.config
    cd ~/.config; ln -s $BASE/general_vim nvim
fi
