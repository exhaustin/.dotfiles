# Install cmd line tools
sudo apt install vim tmux htop zsh fonts-powerline

# Generate ssh key for GitHub
ssh-keygen -t ed25519 -C "austinswang@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Add the following public key to GitHub: "
cat ~/.ssh/id_ed25519.pub

# Copy configs
cp -r ~/.dotfiles/copy_contents_to_home/. ~

# Set shell to zsh
chsh -s $(which zsh)

# Install miniconda
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
