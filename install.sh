#!/bin/sh
# LINUX install.sh made by {Trunks}
# 
#
#    This file is part of Sunlite for BitchX.
#
#    Sunlite for BitchX is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    Foobar is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with Sunlite for BitchX; if not, write to the Free Software
#    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
################################################################################
#

DIR=~/.BitchX/sunlite
case $1 in 
  desinstalar)
    rm -r $DIR;
    exit 1;;
  uninstall)
    rm -r $DIR;
    exit 1;;
  *)
    if test ! -f /usr/bin/bplay 
      then echo "Installa bplay per usare gli opzioni di suono" 
    fi;
    if test ! -f /usr/bin/mpg123 
      then echo "Installa mpg123 per usare il player di mp3 mentre usi lo script" 
    fi;
    if test ! -f /usr/bin/gawk 
      then echo "Installa gawk per usare le funzione esterni che ho programmatto in gawk (per esempio per listare el contenuto dei tuoi mp3's)" 
    fi;
    if test ! -f /usr/bin/esms 
      then echo "Installa esms per enviare sms" 
    fi;
    if test ! -f /usr/local/bin/lee 
      then echo "Installa ircha per usare le funzione di speaking dello script"
    fi;
    if test ! -f /usr/bin/cdcd 
      then echo "Installa cdcd per usare le funzione di riproduzione di cd's nello script"
    fi;
    if test ! -f /usr/games/fortune
      then echo "Installa fortune per usare le funzione di ctcp's fortunes dello script ;)"
    fi;
    if test ! -f /usr/bin/i2e.sh
      then echo "Installa i2e per usare le funzione di traduzione dello script"
    fi;
    if test ! -f /usr/bin/figlet
      then echo "Installa figlet per usare una di le funzione ascii art dello script"
    fi;
    if test ! -f /usr/bin/cowsay
      then echo "Installa cowsay per usare una di le funzione ascii art dello script"
    fi;
    if test ! -d ~/.BitchX; then mkdir ~/.BitchX; fi;
    if test ! -d $DIR; then mkdir $DIR; fi;
    echo -e "\n\nRicorda da leggere il README prima da usare lo script\n";
    if test -f ~/.bitchxrc; then cp ~/.bitchxrc ~/.bitchxrc.bak; fi;
    echo "load ~/.BitchX/sunlite/sunlite.bx" > ~/.bitchxrc;
    echo "Adesso il tuo antiquo ~/.bitchxrc é ~/.bitchxrc.bak";
    echo "Se vuoi desinstallare lo script: \"install.sh uninstall\"";
    cp -r . $DIR;
    if test ! -f $DIR/config; then cp config.example $DIR/config; fi;
    rm $DIR/install.sh;
    echo;
    if [ -z "$IRCSERVER" ]
    then echo "Servers che vuoi usare per default";
      read IRCSERVER;
      echo -e "export IRCSERVER=\"$IRCSERVER\"" >> ~/.bashrc;
      export IRCSERVER="$IRCSERVER";
    fi;
    if [ -z "$IRCNICK" ]
    then echo "Il tuo nick per default:";
      read IRCNICK;
      echo -e "export IRCNICK=\"$IRCNICK\"" >> ~/.bashrc;
      export IRCNICK="$IRCNICK";
    fi;
    if [ -z "$IRCNAME" ]
    then echo "il tuo Irc Name per default?";
      read IRCNAME;
      echo -e "export IRCNAME=\"$IRCNAME\"" >> ~/.bashrc;
      export IRCNAME="$IRCNAME";
    fi;
    if [ -z "$IRCUSER" ]
    then echo "e tuo ident:";
      read IRCUSER;
      echo -e "export IRCUSER=\"$IRCUSER\"" >> ~/.bashrc;
      export IRCUSER="$IRCUSER";
    fi;
    if [ -z "$IRCUMODE" ]
    then echo -e "export IRCUMODE='-ws'" >> ~/.bashrc;
      export IRCUMODE='-ws';
    fi;
    echo;
    echo "Per creare il file di configurazione dello script di nuovo esecuti: configure";
    exit 1;;
esac

# Copyright © 2002 Javier Carranza
