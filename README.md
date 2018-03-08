# Docker Hello World

## Build go binary
`docker build -t jdubz/hello-docker-builder -f Dockerfile.builder .`

## Inspect build container
`docker run --rm -it jdubz/hello-docker-builder`

## copy binary to local vm
`docker run --rm -it -v $(pwd):/tmp jdubz/hello-docker-builder`

## build a container to run the binary
`docker build --t jdubz/hello-docker-runner -f Dockerfile.runner .`

## run the binary
`docker run --rm -it jdubz/hello-docker-runner`

## all in one
`docker build -t jdubz/hello-docker .`
`docker run --rm -it jdubz/hello-docker`
