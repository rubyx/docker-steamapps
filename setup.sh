#! /bin/bash

if [ ! -d "${PWD}/data" ]; then
  echo "Creating data directory."
  mkdir "${PWD}/data"
fi

if [ ! -d "${PWD}/mods" ]; then
  echo "Creating mods directory."
  mkdir "${PWD}/mods"
fi

if [ ! -d "${PWD}/logs" ]; then
  echo "Creating logs directory."
  mkdir "${PWD}/logs"
fi

echo "Ready"
