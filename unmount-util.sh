#!/bin/bash 

read -p "what partition whould you like to UN-Mount? (ex: sda3: " input

ls /media/$input

location="/media/${input}"

if [ ! -d $location ]; then
	echo "$location doesn't exist," | lolcat
	echo "Canceling the Procedure " | lolcat
	exit
fi

echo "Proceeding to Mount ${location}" | lolcat
sudo umount /media/$input
echo "Mounting Procedure on $location has completed"
echo "Listing the ex Mounted content (if you still can see the contents, thats mean un mount fails and you need to type no after this!)" | lolcat
ls /media/$input

read -p "whould you like to delete the mount point directory? : " des

if [ "$des" = "yes" ]; then
	sudo rm -rf $location
fi