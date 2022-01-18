# Automake project
### a template to be customized
## Introduction
This project contains 2 programs hello.c and bye.c 
that will compile in 2 different executables.
It uses the automake build system, that is mostly
automated, as drawback, the produced makefiles
cannot be modified easily by hand from a developer/system manager.
The program hello.c will compile on an executable file 
named hello in unix-like OS / environments like
GNU/Linux, Darwin/MacOS, BSD, UNIX, android, ... (the same for bye.c)
and to hello.exe and bye.exe in Microsoft Win / MS-DOS - like
environments like MS Windows, WINE, ReactOS, FreeDOS, MS Win msys2, MinGW, ...
(the same to bye.exe on Win-like).
It also contain hellobye.sh that uses both the produced executables.
## How to use the examples
### to compile
make
### to install
	./configure --prefix=$HOME/Software/hellobye
	make
	make install
## How to customize
The project can be customized for a project you need.
You can change every occurence of the names bye, hello and hellobye
to names of projects you want to build (coherent names are better for other
people or your future you to understand what's implemented).
As first exercise this can be done editing every file interactively.
## TO DO
1. Add explanations on how to change the occurrence of template names with 1 script.
2. Add script example hellobye.bat in cmd batch language
3. TBC

