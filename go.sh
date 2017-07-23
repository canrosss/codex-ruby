#!/bin/bash
eval "$(rbenv init -)"

version="2.4.1"
echo "-------------------------"
echo "Ejecutando comandos rbenv"
echo "-------------------------"

rbenv shell 2.4.1
echo "configurando rbenv shell con $version"
rbenv global 2.4.1
echo "configurando rbenv global con $version"
rbenv rehash
echo "configurando rbenv rehash"
