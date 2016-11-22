#!/bin/bash

if ping -c 2 curie-srv.local >/dev/null ; then
  if [ -d "/Volumes/Music/iTunes/iTunes Media/Music/" ]; then
    rsync -av --delete --whole-file --filter 'protect /iTunes/' --exclude '.DS_Store' /Volumes/Music/iTunes/iTunes\ Media/Music/ curie-srv.local:/Users/cdzombak/Music/
  fi
fi
