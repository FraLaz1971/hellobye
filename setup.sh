#!/usr/bin/env sh
autoreconf --install
./configure --prefix=$HOME/Software/hellobye
make
make install
echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> $HOME/.bashrc
if test -e $HOME/.bash_profile
then
	echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> $HOME/.bash_profile
fi
