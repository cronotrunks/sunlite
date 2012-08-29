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
      then echo "Hauries d'instalar bplay per poder disfrutar de les opcions de so" 
    fi;
    if test ! -f /usr/bin/mpg123 
      then echo "Hauries d'instalar mpg123 per poder disfrutar de l'us d'un reproductor d'mp3 al mateix temps que uses l'script" 
    fi;
    if test ! -f /usr/bin/gawk 
      then echo "Hauries d'instalar gawk per poder disfrutar de l'us de les funcions externes que he programat en gawk (per exemple l'he usat per llistar el contingut dels mp3's)" 
    fi;
    if test ! -f /usr/bin/esms 
      then echo "Hauries d'instalar esms per poder disfrutar de la funcionalitat d'enviament de sms desde BitchX" 
    fi;
    if test ! -f /usr/local/bin/lee 
      then echo "Hauries d'instalar ircha per poder disfrutar de les funcions de speaking de l'script"
    fi;
    if test ! -f /usr/bin/cdcd 
      then echo "Hauries d'instalar cdcd per poder disfrutar de les funcions de reproducció de cd's de l'script"
    fi;
    if test ! -f /usr/games/fortune
      then echo "Hauries d'instalar fortune per poder disfrutar dels ctcp's fortunes de l'script ;)"
    fi;
    if test ! -f /usr/bin/i2e.sh
      then echo "Hauries d'instalar i2e per poder disfrutar de la funció de traducció de l'script"
    fi;
    if test ! -f /usr/bin/figlet
      then echo "Hauries d'instalar figlet per disfrutar d'una de les funcions ascii art de l'script"
    fi;
    if test ! -f /usr/bin/cowsay
      then echo "Hauries d'instalar cowsay per disfrutar d'una de les funcions ascii art de l'script"
    fi;
    if test ! -d ~/.BitchX; then mkdir ~/.BitchX; fi;
    if test ! -d $DIR; then mkdir $DIR; fi;
    echo -e "\n\nRecorda llegir el README abans de començar a usar l'script\n";
    if test -f ~/.bitchxrc; then cp ~/.bitchxrc ~/.bitchxrc.bak; fi;
    echo "load ~/.BitchX/sunlite/sunlite.bx" > ~/.bitchxrc;
    echo "El teu antic ~/.bitchxrc ha estat salvat com ~/.bitchxrc.bak";
    echo "Si en algún moment vols desinstalar l'script invoca: \"install.sh uninstall\"";
    cp -r . $DIR;
    if test ! -f $DIR/config; then cp config.example $DIR/config; fi;
    rm $DIR/install.sh;
    echo;
    if [ -z "$IRCSERVER" ]
    then echo "Afegeix els servidors que vulguis tindre per defecte per l'script";
      read IRCSERVER;
      echo -e "export IRCSERVER=\"$IRCSERVER\"" >> ~/.bashrc;
      export IRCSERVER="$IRCSERVER";
    fi;
    if [ -z "$IRCNICK" ]
    then echo "El teu nick per defecte per l'script ¿serà?";
      read IRCNICK;
      echo -e "export IRCNICK=\"$IRCNICK\"" >> ~/.bashrc;
      export IRCNICK="$IRCNICK";
    fi;
    if [ -z "$IRCNAME" ]
    then echo "¿I el teu Irc Name per defecte?";
      read IRCNAME;
      echo -e "export IRCNAME=\"$IRCNAME\"" >> ~/.bashrc;
      export IRCNAME="$IRCNAME";
    fi;
    if [ -z "$IRCUSER" ]
    then echo "I per últim el teu ident:";
      read IRCUSER;
      echo -e "export IRCUSER=\"$IRCUSER\"" >> ~/.bashrc;
      export IRCUSER="$IRCUSER";
    fi;
    if [ -z "$IRCUMODE" ]
    then echo -e "export IRCUMODE='-ws'" >> ~/.bashrc;
      export IRCUMODE='-ws';
    fi;
    echo;
    echo "Per crear l'arxiu de configuració executi l'script configure";
    exit 1;;
esac

# Copyright © 2002 Javier Carranza
