#!/bin/bash

PS3="choose a script: "
select choice in folder_organiser.sh cruft_remover.sh;do
	case $choice in
		folder_organiser.sh)
				read -p "Folder's absolute path: " path
				bash -i ./folder_organiser.sh $path
			;;
		cruft_remover.sh)
				read -p "Folder's absolute path: " path
				bash -i ./cruft_remover.sh $path
			;;
	esac
	break
done