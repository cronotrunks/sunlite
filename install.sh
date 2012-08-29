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
      then echo "You should install bplay to enjoy with sounds options" 
    fi;
    if test ! -f /usr/bin/mpg123 
      then echo "You should install mpg123 to enjoy with an mp3 player on irc" 
    fi;
    if test ! -f /usr/bin/gawk 
      then echo "You should install gawk to enjoy with special functions (I have used it to develop a command which lists our mp3 directory content)" 
    fi;
    if test ! -f /usr/bin/esms 
      then echo "You should install esms to enjoy with sms functions from BitchX" 
    fi;
    if test ! -f /usr/local/bin/lee 
      then echo "You should install ircha to enjoy with speaking script functions"
    fi;
    if test ! -f /usr/bin/cdcd 
      then echo "You should install cdcd to enjoy with cd player on BitchX"
    fi;
    if test ! -f /usr/games/fortune
      then echo "You should install fortune to enjoy with ctcp's fortunes in our script ;)"
    fi;
    if test ! -f /usr/bin/i2e.sh
      then echo "You should install i2e to enjoy with translate script function"
    fi;
    if test ! -f /usr/bin/figlet
      then echo "You should install figlet to enjoy with one of the ascii art script functions"
    fi;
    if test ! -f /usr/bin/cowsay
      then echo "You should install cowsay to enjoy with one of the ascii art script functions"
    fi;
    if test ! -d ~/.BitchX; then mkdir ~/.BitchX; fi;
    if test ! -d $DIR; then mkdir $DIR; fi;
    echo -e "\n\nRemember reading README file before start using the script\n";
    if test -f ~/.bitchxrc; then cp ~/.bitchxrc ~/.bitchxrc.bak; fi;
    echo "load ~/.BitchX/sunlite/sunlite.bx" > ~/.bitchxrc;
    echo "Your old ~/.bitchxrc has been saved as ~/.bitchxrc.bak";
    echo "If you want to uninstall script run: \"install.sh uninstall\"";
    cp -r . $DIR;
    if test ! -f $DIR/config; then cp config.example $DIR/config; fi;
    rm $DIR/install.sh;
    echo;
    if [ -z "$IRCSERVER" ]
    then echo "Add default servers you want to use on script starts";
      read IRCSERVER;
      echo -e "export IRCSERVER=\"$IRCSERVER\"" >> ~/.bashrc;
      export IRCSERVER="$IRCSERVER";
    fi;
    if [ -z "$IRCNICK" ]
    then echo "Your default nick on irc will be...";
      read IRCNICK;
      echo -e "export IRCNICK=\"$IRCNICK\"" >> ~/.bashrc;
      export IRCNICK="$IRCNICK";
    fi;
    if [ -z "$IRCNAME" ]
    then echo "¿And your default Irc Name?";
      read IRCNAME;
      echo -e "export IRCNAME=\"$IRCNAME\"" >> ~/.bashrc;
      export IRCNAME="$IRCNAME";
    fi;
    if [ -z "$IRCUSER" ]
    then echo "Your ident:";
      read IRCUSER;
      echo -e "export IRCUSER=\"$IRCUSER\"" >> ~/.bashrc;
      export IRCUSER="$IRCUSER";
    fi;
    if [ -z "$IRCUMODE" ]
    then echo -e "export IRCUMODE='-ws'" >> ~/.bashrc;
      export IRCUMODE='-ws';
    fi;
    echo;
    echo "To create configuration file run configure";
    exit 1;;
esac

# Copyright © 2002 Javier Carranza
