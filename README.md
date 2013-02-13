## To Install
(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git://github.com/jlabarbera11/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc

### Adding A Submodule

    cd ~/.vim/bundle
    git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive

### Deleting a Submodule

    cd  ~/.vim/bundle
    rm -rf vim-fugitive
