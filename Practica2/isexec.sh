#!/usr/bin/bash
if [ -x "$1" -a -f "$1" -a -e "$1" ]
then
    echo $1 es un fichero ejecutable
else
    echo $1 no es un fichero ejecutable
fi