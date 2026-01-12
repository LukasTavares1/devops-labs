#!/bin/bash

read -p "Digite a operação desejada: 'compactar' ou 'descompactar'" operacao

case "$operacao" in
	"compactar")
		read -p "Digite o nome do arquivo final (tar.gz): " arquivo_saida
		read -p "Digite o caminho dos arquivos a serem compactados: " arquivos
		tar -czf "$arquivo_saida" $arquivos
		echo "arquivo compactado com sucesso $arquivo-saida"
	;;
	"descompactar")
		read -p "Digite o nome do arquivo a ser decompactado (tar.gz): " arquivo
		read -p "Digite o diretorio de destino do arquivo: " diretorio
		tar -xzf "$arquivo" -C "$diretorio"
	;;
	*)
		echo "operação invalida"
		echo "selecione 'compactar' ou 'descompactar'"
		exit1
	;;
esac
