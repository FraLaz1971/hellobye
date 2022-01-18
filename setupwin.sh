#!/usr/bin/env sh
#autoreconf --install
cp Makefile_mingw.am Makefile.am
mingw32-make -f Makefile.mingw distclean
./configure --prefix=$HOME/Software/hellobye
find . -type f -name Makefile -exec sed -i 's/MAKE=make/MAKE=mingw32-make/g' Makefile {} \;
find . -type f -name Makefile -exec  cp {} {}.mingw \;
mingw32-make -f Makefile.mingw -i
mingw32-make -f Makefile.mingw -i install
echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> $HOME/.bash_profile
