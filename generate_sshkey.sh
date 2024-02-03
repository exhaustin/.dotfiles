# Generate ssh key for GitHub
ssh-keygen -t ed25519 -C "austinswang@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Generated public key: "
cat ~/.ssh/id_ed25519.pub
