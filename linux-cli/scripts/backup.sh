#!/bin/bash

diretorio_backup="/home/lukastvrs/devops"
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if [ ! -d "$diretorio_backup" ]; then
  echo "Erro: diretório $diretorio_backup não existe"
  exit 1
fi

tar -czf "$nome_arquivo" "$diretorio_backup"

if [ $? -eq 0 ]; then
  echo "Backup concluído com sucesso em $nome_arquivo"
else
  echo "Erro ao criar o backup"
  exit 1
fi

