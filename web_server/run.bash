#!/usr/bin/env bash

xhost +local:docker || true

docker run  -ti -d \
            -e "DISPLAY" \
            -e "QT_X11_NO_MITSHM=1" \
            -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
            --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
            -e XAUTHORITY \
            -v "/home:/root" \
            -v "/dev:/dev" \
            --net=host \
            --privileged \
            --name apache2 apache2 \
            bash
            
bash exec.bash
            
