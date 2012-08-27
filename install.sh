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
      then echo "Deberías instalar bplay para poder disfrutar de las opciones de sonido" 
    fi;
    if test ! -f /usr/bin/mpg123 
      then echo "Deberías instalar mpg123 para poder disfrutar del uso de un reproductor de mp3 al mismo tiempo que usas el script" 
    fi;
    if test ! -f /usr/bin/gawk 
      then echo "Deberías instalar gawk para poder disfrutar del uso de las funciones externas que he programado en gawk (por ejemplo la he usado para listar el contenido de los mp3's)" 
    fi;
    if test ! -f /usr/bin/esms 
      then echo "Deberías instalar esms para poder disfrutar de la funcionalidad de envío de sms desde BitchX" 
    fi;
    if test ! -f /usr/local/bin/lee 
      then echo "Deberías instalar ircha para poder disfrutar de las funciones de speaking del script"
    fi;
    if test ! -f /usr/bin/cdcd 
      then echo "Deberías instalar cdcd para poder disfrutar de las funciones de reproducción de cd's del script"
    fi;
    if test ! -f /usr/games/fortune
      then echo "Deberías instalar fortune para poder disfrutar de los ctcp's fortunes del script ;)"
    fi;
    if test ! -f /usr/bin/i2e.sh
      then echo "Deberías instalar i2e para poder disfrutar de la función de traducción del script"
    fi;
    if test ! -f /usr/bin/figlet
      then echo "Deberías instalar figlet para disfrutar de una de las funciones ascii art del script"
    fi;
    if test ! -f /usr/bin/cowsay
      then echo "Deberías instalar cowsay para disfrutar de una de las funciones ascii art del script"
    fi;
    if test ! -d ~/.BitchX; then mkdir ~/.BitchX; fi;
    if test ! -d $DIR; then mkdir $DIR; fi;
    echo -e "\n\nRecuerda leer el README antes de comenzar a usar el script\n";
    if test -f ~/.bitchxrc; then cp ~/.bitchxrc ~/.bitchxrc.bak; fi;
    echo "load ~/.BitchX/sunlite/sunlite.bx" > ~/.bitchxrc;
    echo "Tu antiguo ~/.bitchxrc ha sido salvado como ~/.bitchxrc.bak";
    echo "Si en algún momento quieres desinstalar el script invoca: \"install.sh uninstall\"";
    cp -r . $DIR;
    if test ! -f $DIR/config; then cp config.example $DIR/config; fi;
    rm $DIR/install.sh;
    echo;
    if [ -z "$IRCSERVER" ]
    then echo "Añade los servidores que quieres tener por defecto para el script";
      read IRCSERVER;
      echo -e "export IRCSERVER=\"$IRCSERVER\"" >> ~/.bashrc;
      export IRCSERVER="$IRCSERVER";
    fi;
    if [ -z "$IRCNICK" ]
    then echo "Tu nick por defectopara el script ¿será?";
      read IRCNICK;
      echo -e "export IRCNICK=\"$IRCNICK\"" >> ~/.bashrc;
      export IRCNICK="$IRCNICK";
    fi;
    if [ -z "$IRCNAME" ]
    then echo "¿Y tu Irc Name por defecto?";
      read IRCNAME;
      echo -e "export IRCNAME=\"$IRCNAME\"" >> ~/.bashrc;
      export IRCNAME="$IRCNAME";
    fi;
    if [ -z "$IRCUSER" ]
    then echo "Y por último tu ident:";
      read IRCUSER;
      echo -e "export IRCUSER=\"$IRCUSER\"" >> ~/.bashrc;
      export IRCUSER="$IRCUSER";
    fi;
    if [ -z "$IRCUMODE" ]
    then echo -e "export IRCUMODE='-ws'" >> ~/.bashrc;
      export IRCUMODE='-ws';
    fi;
    echo;
    echo "Para crear el archivo de configuración ejecute el script configure";
    exit 1;;
esac

# Copyright © 2002 Javier Carranza
