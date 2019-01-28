#!/bin/bassh

while true; do
 if [ $(pgrep $service | wc -l) -eq 0 ]
 then
  echo "noip is not running. Starting daemon"
  noip2
 else
  sleep 5
 fi
 done