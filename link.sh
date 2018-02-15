# Create the symlinks for all files in the repo

# Script Configuration
status_prefix="INFO >>";

# General Stuff
echo "$status_prefix Linking user configuration"

ln -s ~/.dotfiles/.profile ~/.profile

# Zsh Stuff
echo "$status_prefix Linking ZSH configuration"

ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Bash Stuff
echo "$status_prefix Linking Bash configuration"

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

# Neovim Stuff
echo "$status_prefix Linking Neovim configuration"

nvimrc_dir=~/.config/nvim/
nvim_plugs_dir=~/.local/share/nvim/site/

if [ ! -d  "$nvimrc_dir" ]; then
    echo "$status_prefix Creating directory "$nvimrc_dir" for Nvim configuration";
    mkdir -p "$nvimrc_dir"
fi

ln -s ~/.dotfiles/nvim/init.vim "$nvimrc_dir"/init.vim

if [ ! -d "$nvim_plugs_dir" ]; then
    echo "$status_prefix Creating directory "$nvim_plugs_dir" for Nvim plugins";
    mkdir -p "$nvim_plugs_dir"
fi

ln -s ~/.dotfiles/nvim/autoload "$nvim_plugs_dir"/autoload

# Vim Stuff
echo "$status_prefix Linking Vim configuration"

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
echo ~/.dotfiles/.vim/
echo ~/.vim/

# Emacs Stuff
echo "$status_prefix Linking Emacs configuration"

ln -s ~/.dotfiles/.emacs.d ~/.emacs.d/

# Tmux Stuff
echo "$status_prefix Linking Tmux configuration"

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

# GDB Init
echo "$status_prefix Linking GDB Configuration"

ln -s ~/.dotfiles/.gdbinit ~/.gdbinit

