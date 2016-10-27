#!/bin/bash

xhost + local:docker

myfile=""
cwd="$(dirname $(pwd))"

app=crdp



##if [ -n "$1" ]; then
##    myfile=$(echo $1 | sed -e "s|$HOME|/root|g")
##    echo $1
##    echo $myfile
##fi

uid=0

        ##--network isolated_nw \
        ##-v /dev/shm:/dev/shm \
        ##-v /etc/machine-id:/etc/machine-id \
        ##-v /run/user/$uid/pulse:/run/user/$uid/pulse \
        ##-v /var/lib/dbus:/var/lib/dbus \
        ##-v ~/.pulse:/.pulse \
        ##-v /dev/snd:/dev/snd \

docker run -it --rm -e DISPLAY=$DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        $app "$@"

xhost - local:docker
