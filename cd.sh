#!/bin/bash

builtin cd "$@" && ls;
if [ "$?" != "0" ]; then
  echo -n "Create $@ directory? [y/n] ";
  read confirmation;
  if [ "$confirmation" == "y" ]; then
    mkdir -p "$@" && builtin cd "$@";
    echo "You are now in $(pwd)";
  fi
fi
