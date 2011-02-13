current_path=`pwd`
echo "Upgrading PIMP My ZSH"
( cd $ZSH && git pull origin master )

echo ' PPPPPP   IIIII  MM    MM  PPPPPP   MM    MM          ZZZZZ  SSSSS  HH   HH' 
echo ' PP   PP   III   MMM  MMM  PP   PP  MMM  MMM yy   yy     ZZ SS      HH   HH'
echo ' PPPPPP    III   MM MM MM  PPPPPP   MM MM MM yy   yy    ZZ   SSSSS  HHHHHHH'
echo ' PP        III   MM    MM  PP       MM    MM  yyyyyy   ZZ        SS HH   HH'
echo ' PP       IIIII  MM    MM  PP       MM    MM      yy  ZZZZZ  SSSSS  HH   HH'
echo '                                               yyyyy'
echo "YES! PIMP My ZSH has been updated and/or is at the current version. \nAny new updates will be reflected when you start your next terminal session."
cd $current_path 
