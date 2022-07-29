#!/bin/bash 

read -p "what partition whould you like to Mount? (ex: sda3: " input

location="/media/${input}"

if [ ! -d $location ]; then
	sudo mkdir /media/$input
fi

echo "Proceeding to Mount ${location}" | lolcat
sudo mount /dev/$input /media/$input
echo "Mounting Procedure on $location has completed"