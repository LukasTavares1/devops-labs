#!/bin/bash
if pgrep nginx &> /dev/null
then
	echo "O serviço esta disponivel $(date +"%Y-%m-%d %H:%M:%S")"
else
	echo "O serviço esta indisponivel $(date +"%Y-%m-%d %H:%M:%S")"
fi
