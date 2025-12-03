##
## Development docker image - used for local development.
## assumes codebase happens to be located at /mnt/github/erlang-red ...
build-docker-container:
	docker build -f Dockerfile.dev -t elixir-shell .

start-docker-shell: build-docker-container
	docker run -it -v $(shell pwd):/code -w /code --rm elixir-shell bash

enter-docker-shell:
	docker exec -it $$(docker ps -f ancestor=elixir-shell -q) bash

##
## The following are done inside the docker container - after running
## make enter-docker-shell
##
compile:
	mix

compile-loop:
	while [ 1 ] ; do make -s compile ; sleep 2 ; reset ; done

shell:
	mix shell

eunit-test:
	mix test
