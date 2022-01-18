#!/usr/bin/env sh
PKGNAME="hellobye"
autoreconf --install
cp Makefile_lnx.am Makefile.am
make -i -f Makefile.lnx distclean
./configure --prefix="$HOME"/Software/"$PKGNAME"
find . -type f -name Makefile -exec sed -i 's/MAKE=mingw32-make/MAKE=make/g' {} \;
find . -type f -name Makefile -exec  cp {} {}.lnx \;
find . -type f -name Makefile.lnx -exec sed -i 's/MAKE=mingw32-make/MAKE=make/g' {} \;
make -f Makefile.lnx -i
make -f Makefile.lnx -i install
echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> "$HOME"/.bashrc
echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> "$HOME"/.bash_profile
make -f Makefile.lnx -i distclean
echo "***********************************************"
echo "*** the $PKGNAME package has been installed"
echo "*** in $HOME/Software/hellobye"
echo "***********************************************"
