# Install cmd line tools
sudo apt install vim tmux htop zsh fonts-powerline

# Generate ssh key for GitHub
ssh-keygen -t ed25519 -C "austinswang@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Add the following public key to GitHub/GitLab: "
cat ~/.ssh/id_ed25519.pub

# Copy configs
cp -r ~/.dotfiles/copy_contents_to_home/. ~

# Setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)

# Install Starship
curl -sS https://starship.rs/install.sh | sh