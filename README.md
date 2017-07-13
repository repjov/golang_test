# GO Lang REST API Server Application
## Requirements
- Docker
- Git

## Commands
Start container with docker
```bash
./bin/up.sh
```

OR

```bash
make run
```


My first test project on Golang.

Files are located in `app` folder.

In order to compile project you need to do following:

run: `export GOOS=darwin GOARCH=amd64`

run: `make build_macos`

In order to run compiled project

run: `./build/app`
