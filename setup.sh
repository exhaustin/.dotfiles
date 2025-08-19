# Install cmd line tools
sudo apt update
sudo apt install -y curl vim tmux htop zsh fonts-powerline

# Setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)

# Symlink custom theme
ln -s ~/.dotfiles/zsh_custom/themes/gnzh.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/gnzh.zsh-theme

# Copy configs
cp -r ~/.dotfiles/copy_contents_to_home/. ~

# Git config
git config --global push.autoSetupRemote true
