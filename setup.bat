REM this script installs the hellobye project
@echo off
REM autoreconf --install
configure.bat /prefix=$HOME/Software/hellobye
mingw32-make
mingw32-make install
REM ***********************
REM *** TO BE COMPLETED ***
REM ***********************
REM echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> $HOME/.bashrc
REM if test -e $HOME/.bash_profile
REM then
REM echo 'export PATH=$PATH:$HOME/Software/hellobye/bin' >> $HOME/.bash_profile
REM fi
