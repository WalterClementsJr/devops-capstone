# Variables

IMAGE_NAME=registry.hub.docker.com/walterclementsjr/hello-world
CONTAINER_PORT=9090
HOST_PORT=80

install:

	# install linter for shell scripts
	echo "Installing shellcheck"
	./script/install_shellcheck.sh

  # install linter for Dockerfiles
	echo "Installing hadolint"
	./script/install_hadolint.sh

	echo "Installing app dependencies..."
	cd ./app && npm install
	cd ../

lint:
	./bin/shellcheck -Cauto -a ./script/*.sh
	./bin/hadolint app/Dockerfile
	npm run --prefix ./app lint

run-app:
	npm run --prefix ./app start

build-docker:
	./script/docker_build.sh

run-docker: build-docker
	./script/docker_run.sh

upload-docker: build-docker
	./script/docker_upload.sh
