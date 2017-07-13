SHELL = /bin/bash
current_dir = $(shell pwd)
appname = golangapp

run:
	docker run -dit --rm --name $(appname) \
	 -p 3000:3000 \
	 -v $(current_dir)/app:/go/src/app \
	 -v $(current_dir)/build:/go/bin \
	 golang /bin/bash #go install app/
	 $(MAKE) install_dep

stop:
	docker stop $(appname)

install_dep:
	docker exec -it $(appname) go get github.com/gorilla/mux
	docker exec -it $(appname) go get -u github.com/jinzhu/gorm

buildapp:
	docker exec -it $(appname) go install app

execapp:
	docker exec -it $(appname) /go/bin/app
