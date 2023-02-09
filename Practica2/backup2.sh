#!/bin/bash
for i in "$@"
do
    if [ -f "$i" ]
    then
        if [ "$i" = *.c -o "$i" = *.cpp -o "$i" = *.h -o "$i" = *.hpp ]
        then
            A=$(ls *"$i" | wc -w)
            if [ $A -lt 9 ]
            then
                dat= $(date +%y%m%d)
                vers="$dat_$i"
                cp "$i" $vers
            else
                echo máximo de 9 copias alcanzadas
            fi

        else
            echo "$i" no es un archivo .c, .cpp, .h o .hpp
        fi
    else
        echo "$i" no es un archivo
    fi
done
