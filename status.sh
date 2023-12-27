#!/bin/sh

while true;
  do echo \
   -e "HTTP/1.1 200 OK\n\n$(iostat)" \
  | nc 0.0.0.0 8080;
done


