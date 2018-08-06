#!/bin/bash
DIR=/opt/patroneo
    if [ -f $DIR"/patroneosd.pid" ]; then
        pid=$(cat $DIR"/patroneosd.pid")
        echo $pid
        kill $pid
        rm -r $DIR"/patroneosd.pid"

        echo -ne "Stoping Nodeos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodeos stopped. \n"

    fi
    
