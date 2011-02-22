function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function uninstall_pimp() {
  /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_pimp() {
  /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

function extract() {
    unset REMOVE_ARCHIVE
    
    if test "$1" = "-r"; then
        REMOVE=1
        shift
    fi
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2) tar xvjf $1;;
      *.tar.gz) tar xvzf $1;;
      *.tar.xz) tar xvJf $1;;
      *.tar.lzma) tar --lzma -xvf $1;;
      *.bz2) bunzip $1;;
      *.rar) unrar x $1;;
      *.gz) gunzip $1;;
      *.tar) tar xvf $1;;
      *.tbz2) tar xvjf $1;;
      *.tgz) tar xvf $1;;
      *.zip) unzip $1;;
      *.Z) uncompress $1;;
      *.7z) 7z x $1;;
      *) echo "'$1' cannot be extracted via >extract<";;
    esac

    if [[ $REMOVE_ARCHIVE -eq 1 ]]; then
        echo removing "$1";
        /bin/rm "$1";
    fi

  else
    echo "'$1' is not a valid file"
  fi
}

# Battery
#function showbat {
#    BATP=$(acpi -b | awk '{print $4}' | sed -e s/%,//g);
#
#        if [ "$BATP" = "100%" ]; then
#                BATP="100" && BCOLOR="green";
#        elif [ "$BATP" -ge "75" ]; then
#                       BCOLOR="green";
#        elif [ "$BATP" -ge "25" ]; then
#                       BCOLOR="yellow";
#                       else
#                       BCOLOR="red";
#        fi
#
#	BATT=$(acpi  | awk '{print $5}' | sed -e s/...$//g);
#        BATAC=$(acpi  | awk '{print $3}'| sed -e s/,//g);
#                                           
#          if [ "$BATAC" = "Charging" ] || [ "$BATAC" = "Full" ]; then
#             echo "%{$fg_bold[$BCOLOR]%}$BATP%% ~[AC]%{$reset_color%}"
#                       else
#             echo "%{$fg_bold[$BCOLOR]%}$BATP%% $BATT min%{$reset_color%}"
#          fi
#}

# System

funtion start()
{
for arg in "${*[@]}"; do
sudo /etc/rc.d/$arg start
done
}

function stop()
{
for arg in "${*[@]}"; do
sudo /etc/rc.d/$arg stop
done
}

function restart()
{
for arg in "${*[@]}"; do
sudo /etc/rc.d/$arg restart
done
}

function reprobe()
{
for arg in "${*[@]}"; do
sudo modprobe -r $arg
sudo modprobe $arg
done
}

function maintain()
{
# Update
sudo pacman -Syu
sudo abs

# Clean
sudo pacman -Rsc $(pacman -Qtdq)
sudo localepurge
sudo pacman -Scc

# Generale maintenence
sudo pacman-optimize
sudo mandb
sudo ldconfig -v
sudo updatedb
sudo sync
}

# Generate Man to PDF
man2pdf() {
    if [[ -z $1 ]]; then
        echo "USAGE: man2pdf [manpage]"
    else
        if [[ `find /usr/share/man -name $1\* | wc -l` -gt 0 ]]; then
                out=/tmp/$1.pdf
                if [[ ! -e $out ]]; then
                        man -t $1 | ps2pdf - > $out
                fi
                if [[ -e $out ]]; then
                        /usr/bin/evince $out
                fi
        else
                echo "ERROR: manpage \"$1\" not found."
        fi
    fi
}
