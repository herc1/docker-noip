#!/bin/bash

noip2 -d
while true; do
 if [ $(pgrep noip2 | wc -l) -eq 0 ]
 then
  echo "noip is not running. Starting daemon"
  noip2 -d
 else
  sleep 5
 fi
 done