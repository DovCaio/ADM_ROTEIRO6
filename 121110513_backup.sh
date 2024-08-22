#!/bin/bash

ORIGEM= $1
DESTINO= $2

if [ ! -e $ORIGEM ]; then
    echo Diretório ou arquivo origen $1 não encontrado.
    exit 1
elif [ ! -e $DESTINO ]; then
    echo Diretório destino $2 não encotrado.
    exit 1
fi

NOME=`date +"backup_%y-%m-%d.tar.gz"`
FLAGS="-cvzf"
exec tar $FLAGS $NOME $1
cp -r $NOME $2

