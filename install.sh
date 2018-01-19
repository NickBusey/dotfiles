rm -rf ~/.hammerspoon ~/.tmuxinator

ln -s $(pwd)/hammerspoon/  ~/.hammerspoon
ln -s $(pwd)/tmuxinator/ ~/.tmuxinator

ln -sF $(pwd)/tmux.conf ~/.tmux.conf
ln -sF $(pwd)/zshrc ~/.zshrc
ln -sF $(pwd)/vimrc ~/.vimrc

