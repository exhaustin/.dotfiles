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
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
