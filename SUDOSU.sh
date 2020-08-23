#!/bin/bash
#
#

funcbanner() {
	clear
	setterm --foreground green
	echo '

   ___               _                    
  / __|   _  _    __| |    ___      o O O 
  \__ \  | +| |  / _` |   / _ \    o      
  |___/   \_,_|  \__,_|   \___/   TS__[O] 
_|"""""|_|"""""|_|"""""|_|"""""| {======| 
"`-0-0-!!`-0-0-"!`-0-0-!!`-0-0-!./o--000"

	'
}


if test -e $PREFIX/bin/setterm ; then
	funcbanner
else
	apt update ; apt install util-linux
	bash SUDOSU.sh
fi

pkg install ncurses-utils git
git clone https://gitlab.com/st42/termux-sudo
cd termux-sudo
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
setterm --foreground green
rm -rf $HOME/termux-sudo
setterm --foreground green
echo "Modo de uso: para entrar no shell root >> sudo su / sudo apt update"
