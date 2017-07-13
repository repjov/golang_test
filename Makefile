SHELL = /bin/bash
current_dir = $(shell pwd)
appname = golangapp

run:
	./bin/run.sh

stop:
	./bin/stop.sh

install_dep:
	docker exec -it $(appname) go get github.com/gorilla/mux
	docker exec -it $(appname) go get -u github.com/jinzhu/gorm

buildapp:
	docker exec -it $(appname) go install app

execapp:
	docker exec -it $(appname) /go/bin/app
