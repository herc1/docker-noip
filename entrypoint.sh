#!/bin/bash

while true; do
 if [ $(pgrep $service | wc -l) -eq 0 ]
 then
  echo "noip is not running. Starting daemon"
  noip2 -S -d
 else
  sleep 5
 fi
 done