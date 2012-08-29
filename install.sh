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
      then echo "Soiñuarentzako bplay istalatu beharko zenuke" 
    fi;
    if test ! -f /usr/bin/mpg123 
      then echo "scripta erabiltzen duzun bitartean mp3 reproduktore bat erabiltzeko mpg321 istalatu beharko zenuke" 
    fi;
    if test ! -f /usr/bin/gawk 
      then echo "gawk istalatu beharko zenuke kanpoko funtzioak erabil ditzazun(mp3 edukiera listatzeko adibidez)." 
    fi;
    if test ! -f /usr/bin/esms 
      then echo "BitchXetik sms bidali ditzazun esms istalatu beharko zenuke" 
    fi;
    if test ! -f /usr/local/bin/lee 
      then echo "ircha istalatu beharko zenuke skriptak hitzegin diezazun."
    fi;
    if test ! -f /usr/bin/cdcd 
      then echo "skriptaren cd erreproduzio funtzioak erabiltzeko cdcd istalatu beharko zenuke."
    fi;
    if test ! -f /usr/games/fortune
      then echo "skriptaren ctcp fortuneak erabiltzeko fortune istalatu beharko zenuke."
    fi;
    if test ! -f /usr/bin/i2e.sh
          then echo "i2e istlatu beharko zenuke skriptaren itzulpen funtzioa erabiltzeko."
    fi;
    if test ! -f /usr/bin/figlet
      then echo "ascii artea erabiltzeko figleta istalatu beharko zenuke."
    fi;
    if test ! -f /usr/bin/cowsay
      then echo "ascii artearen funtzio bat erabiltzeko cowsay istalatu beharko zenuke."
    fi;
    if test ! -d ~/.BitchX; then mkdir ~/.BitchX; fi;
    if test ! -d $DIR; then mkdir $DIR; fi;
    echo -e "\n\nScripta erabili baino lehen IRAKURNAZAZU irakurri beharko duzu\n";
    if test -f ~/.bitchxrc; then cp ~/.bitchxrc ~/.bitchxrc.bak; fi;
    echo "load ~/.BitchX/sunlite/sunlite.bx" > ~/.bitchxrc;
    echo "Zure ~/.bitchxrc zaharra ~/.bitchxrc.bak bezala gorde da";
    echo "scripta kendu nahi baduzu egin ezazu: \"install.sh uninstall\"";
    cp -r . $DIR;
    if test ! -f $DIR/config; then cp config.example $DIR/config; fi;
    rm $DIR/install.sh;
    echo;
    if [ -z "$IRCSERVER" ]
    then echo "skriptean nahi dituzun serbidoreak gehitzen ditu";
      read IRCSERVER;
      echo -e "export IRCSERVER=\"$IRCSERVER\"" >> ~/.bashrc;
      export IRCSERVER="$IRCSERVER";
    fi;
    if [ -z "$IRCNICK" ]
    then echo "zure defektuzko nick-a scriptarentzako?";
      read IRCNICK;
      echo -e "export IRCNICK=\"$IRCNICK\"" >> ~/.bashrc;
      export IRCNICK="$IRCNICK";
    fi;
    if [ -z "$IRCNAME" ]
    then echo "¿eta zure Irc Name-a ?";
      read IRCNAME;
      echo -e "export IRCNAME=\"$IRCNAME\"" >> ~/.bashrc;
      export IRCNAME="$IRCNAME";
    fi;
    if [ -z "$IRCUSER" ]
    then echo "azkenik, zure ident:";
      read IRCUSER;
      echo -e "export IRCUSER=\"$IRCUSER\"" >> ~/.bashrc;
      export IRCUSER="$IRCUSER";
    fi;
    if [ -z "$IRCUMODE" ]
    then echo -e "export IRCUMODE='-ws'" >> ~/.bashrc;
      export IRCUMODE='-ws';
    fi;
    echo;
    echo "configurazio artxiboa sortzeko configure skripta exekutatu";
    exit 1;;
esac

# Copyright © 2002 Javier Carranza
