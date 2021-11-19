# Install cmd line tools
sudo apt install vim tmux htop zsh fonts-powerline

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
