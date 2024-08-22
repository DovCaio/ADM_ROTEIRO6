#!/bin/bash

TEMPO=60
if [ $2 ];then
    $TEMPO = $2
fi

while :
do
    ps -eo %cpu,%mem
    COMANDO=`ps -eo %cpu,%mem`
    if [ $1 ];then
        echo $COMANDO >> sistema_log.txt
    fi
    sleep $TEMPO
done
