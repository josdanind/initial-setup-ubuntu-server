#!/bin/bash

# Install Neovim
sudo snap install nvim --classic

DIRBASE=/home/root/.config/nvim
DIR_AUTOLOAD=${DIRBASE}/autoload
DIR_VIMPLUG=${DIRBASE}/vim-plug

# Create Directories - Neovim setup
if [ -d "$DIRBASE" ]
then
	echo "Route ${DIRBASE} exists"
else
	mkdir -p ${DIRBASE} & PID_1=$!
	wait $PID_1
	echo "Route ${DIRBASE} created"

	mkdir ${DIR_AUTOLOAD}
	echo "Route ${DIR_AUTOLOAD} created"
        mkdir ${DIR_VIMPLUG}
        echo "Route ${DIR_VIMPLUG} created"
fi

cp pluggins.vim ${DIR_VIMPLUG}
cp keybinds.vim ${DIRBASE}

curl -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv plug.vim ${DIR_AUTOLOAD}

cp init.vim ${DIRBASE}
