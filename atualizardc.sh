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


echo "-------downloading the most recent discord version--------"
wget -O "$FILE" "$URL"

if [ $? -eq 0 ]; then
	echo "----------download concluded. installation initiating----------"
	sudo dpkg -i "$FILE"

	echo "-----------cleaning  unused-------------"
	rm "$FILE"
	
	echo "------- veryfying and correcting depedencies ---------"
	sudo apt-get install -f -y
	echo "---------- discord updated :p ------------"

	notify-send "Discord" "update completed"
else
	echo "------- download failed :(-------"

fi



