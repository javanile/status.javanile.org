#!/bin/sh
set -e

cache() {
    local ttl

    ttl=$1

    shift
    "$@"
}

response() {
    echo "HTTP/1.1 200 OK"
    echo "Access-Control-Allow-Origin: *"
    echo

    echo " 192.168.144.10 . . . [OK]"

    #cache 5 ls -la
}

main() {
    while true;
        do cache 5 response | ncat -l -p 8080
    done
}

main
