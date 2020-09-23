#!/bin/bash

SERVER_COMMAND="python3 -m http.server "

PORT=$2

# Port check format
if ! [[ "$PORT" =~ ^[0-9]{4}$ ]] 
then
  printf "Run In Default Port 8080\n"
  PORT=8080
fi

if [ "$1" = "start" ] 
then
  eval "$SERVER_COMMAND $PORT"
else
  printf "1th param must be 'start' or 'end'\n" >&2
fi
