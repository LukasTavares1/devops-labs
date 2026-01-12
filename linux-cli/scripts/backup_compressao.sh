#!/bin/bash

origem="/home/lukastvrs/devops"
destino="/home/lukastvrs/backup"

mkdir -p "$destino"

arquivo_backup="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$destino/$arquivo_backup" "$origem"

echo "Backup criado em $destino/$arquivo_backup"
