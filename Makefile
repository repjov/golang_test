SHELL = /bin/bash
current_dir = $(shell pwd)

build_macos:
	export GOOS=darwin GOARCH=amd64
	docker run --rm \
	 -v $(current_dir)/app:/go/src/app \
	 -v $(current_dir)/build:/go/bin/${GOOS}_${GOARCH} \
	 -e GOOS -e GOARCH \
	 golang go install app/
