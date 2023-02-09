#!/usr/bin/bash
for i in *
do
    if [ -d $i  ]
    then
        echo -e "$i \tdirectorio"
    elif [ -f $i  ]
    then
        echo -e "$i \tfichero"
    else
        echo -e "$i \tarchivo especial"
    fi
done