#!/bin/bash

echo "Digite o diretório:"
read diretorio

echo "Digite o prefixo a ser adicionado:"
read prefixo

for arquivo in "$diretorio"/*; do
  nome=$(basename "$arquivo")
  mv "$arquivo" "$diretorio/$prefixo$nome"
done

echo "Arquivos renomeados com sucesso."
