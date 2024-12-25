#!/bin/bash

su -c '
  while true; do
    clear
    
    dumpsys media.audio_flinger \
      | grep -o "name:[[:space:]].*" \
      | sed "s/name:[[:space:]]//" \
      | nl
    
    read -t 1 -s -N 1 2> /dev/null && break
  done
'
