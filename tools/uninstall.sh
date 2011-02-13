echo "Removing ~/.zsh-pimp"
if [[ -d ~/.zsh-pimp ]]
then
  rm -rf ~/.zsh-pimp
fi

echo "Looking for an existing zsh config..."
if [ -f ~/.zshrc.previous ] || [ -h ~/.zshrc.previous ]
then
  echo "Found ~/.zshrc. Backing up to ~/.zshrc.previous";
  rm ~/.zshrc;
  cp ~/.zshrc.previous ~/.zshrc;
  source ~/.zshrc;
else
  echo "Switching back to bash"
  chsh -s /bin/bash
  source /etc/profile
fi

echo "Thanks for trying out PIMP My Zsh. It's been removed."
