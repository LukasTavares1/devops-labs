#!/bin/bash

echo "Digite o nome do novo usuário:"
read usuario

if id "$usuario" &>/dev/null; then
  echo "Erro: o usuário '$usuario' já existe."
  exit 1
fi

sudo useradd -m "$usuario"
sudo passwd "$usuario"

echo "Usuário $usuario criado com sucesso."
