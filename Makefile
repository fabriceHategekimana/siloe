all:start

start: clear
	nu search.nu un deux trois

command: clear
	cat Makefile | grep ": clear" | sed "s/: clear//" | grep --invert-match "clear" 

commands: clear
	cat Makefile | grep ": clear" | sed "s/: clear//" | grep --invert-match "clear" 

clear: FORCE
	clear

FORCE:
