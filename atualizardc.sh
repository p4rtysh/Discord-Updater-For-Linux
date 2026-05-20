#!/bin/bash

# discord's official url
NAME="Discord"
URL="https://discordapp.com/api/download?platform=linux&format=deb"
FILE="/tmp/discord.deb"

echo "=-=-=-=-=-= DISCORD UPDATER =-=-=-=-=-=-="

echo -e "--------- killing discord ----------"
for KILLPID in `ps ax | grep $NAME | awk ' { print $1;}'`; do 
	kill -9 KILLPID &> /dev/null
done


echo "-------baixando a versao mais recente do discord--------"
wget -O "$FILE" "$URL"

if [ $? -eq 0 ]; then
	echo "----------download concluido. iniciando instalacao----------"
	sudo dpkg -i "$FILE"

	echo "-----------limpando unused-------------"
	rm "$FILE"
	
	echo "------- verificando e corrigindo dependencias ---------"
	sudo apt-get install -f -y
	echo "---------- discord atualizado ------------"
else
	echo "-------falha ao realizar o download :(-------"

fi



