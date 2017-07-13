# GO Lang REST API Server Application
## Requirements
- Docker
- Git

### Configs
File `config` contains all main configs for application

## Commands
Start container with docker
```bash
./bin/up.sh
```

OR

```bash
make run
```

Stop container with docker
```bash
./bin/halt.sh
```

OR

```bash
make stop
```

Install GO packages for work
```bash
./bin/installpkg.sh
```

OR

```bash
make installpkg
```


My first test project on Golang.

Files are located in `app` folder.

In order to compile project you need to do following:

run: `export GOOS=darwin GOARCH=amd64`

run: `make build_macos`

In order to run compiled project

run: `./build/app`
