SHELL = /bin/bash
current_dir = $(shell pwd)

run:
	./bin/up.sh

stop:
	./bin/halt.sh

installpkg:
	./bin/installpkg.sh

buildapp:
	./bin/build.sh
