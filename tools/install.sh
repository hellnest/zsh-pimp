if [ -d ~/.zsh-pimp ]
then
  echo "You already have PIMP My Zsh installed. You'll need to remove ~/.zsh-pimp if you want to install"
  exit
fi

echo "Cloning To PIMP My ZSH ~ GIT SERVER..."
/usr/bin/env git clone git://github.com/hellnest/zsh-pimp.git ~/.zsh-pimp

echo "Looking for an existing zsh config..."
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "Found ~/.zshrc. Backing up to ~/.zshrc.previous";
  cp ~/.zshrc ~/.zshrc.previous;
  rm ~/.zshrc;
fi

echo "Using the zsh-pimp template file and adding it to ~/.zshrc"
cp ~/.zsh-pimp/templates/zshrc.zsh-template ~/.zshrc

echo "Copying your current PATH and adding it to the end of ~/.zshrc for you."
echo "export PATH=$PATH" >> ~/.zshrc

echo "Time to change your default shell to zsh!"
chsh -s "/usr/bin/env zsh"

echo ' PPPPPP   IIIII  MM    MM  PPPPPP   MM    MM          ZZZZZ  SSSSS  HH   HH' 
echo ' PP   PP   III   MMM  MMM  PP   PP  MMM  MMM yy   yy     ZZ SS      HH   HH'
echo ' PPPPPP    III   MM MM MM  PPPPPP   MM MM MM yy   yy    ZZ   SSSSS  HHHHHHH'
echo ' PP        III   MM    MM  PP       MM    MM  yyyyyy   ZZ        SS HH   HH'
echo ' PP       IIIII  MM    MM  PP       MM    MM      yy  ZZZZZ  SSSSS  HH   HH'
echo '                                               yyyyy'

echo "\n\n ....is now installed."
/usr/bin/env zsh
source ~/.zshrc
