#!/bin/bash

function passgen() {
	if [ $1 == 'Windows' ] || [ $1 == 'WINDOWS' ] || [ $1 == 'windows' ]
	 then
		cp win_version.sh ~
		echo "source ./win_version.sh" >> ~/.bashrc
		echo "Installed the Windows version. Tell me you're basic without telling me you're basic."
	elif [ $1 == 'MacOS' ] || [ $1 == 'macos' ] || [ $1 == 'MACOS' ] || [ $1 == 'MacOs' ] || [ $1 == 'macOs' ] || [ $1 == 'Macos' ]
	 then
		cp mac_version.sh ~
		echo "source ./mac_version.sh" >> ~/.bashrc
		echo "Installed the mac version. Imagine using a mac. Ew. *cries without M1 chip*"
	else
		echo "You either wrote inalid input or a OS that we do not support. Either way sucks to be you."
	fi
}


passgen $1 2> /dev/null
