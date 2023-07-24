#!/usr/bin/bash
read -p "Do you want to build Docker? (y/n): " build_docker

if [ "$build_docker" == "y" ]; then
    # BUILD DOCKER. Where: devops/docker:0.1 = container_name
    docker build -t devops/docker:0.1 -f Dockerfile.devops .
fi

docker run -it --rm --name=docker --name devops\
    --mount type=bind,source=${pwd},target=/src \
    devops/docker:0.1 \
    bash
