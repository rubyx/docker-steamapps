#! /usr/bin/env bash
if [ ! -e "/home/steam/7dtd/configs/${SERVER_CONFIG}.xml" ]; then
  echo "Config ${SERVER_CONFIG}.xml not found."
  exit 1
fi

sigterm() {
  /home/steam/7dtd/scripts/shutdown.expect
  exit 0
}

trap 'sigterm' SIGTERM

echo "Starting server..."
export LD_LIBRARY_PATH=/home/steam/7dtd
/home/steam/7dtd/7DaysToDieServer.x86_64 \
    -configfile=/home/steam/7dtd/configs/${SERVER_CONFIG}.xml \
    -logfile /home/steam/7dtd_Logs/`date +%Y%m%d-%H%M%S`.log \
    -quit -batchmode -nographics -dedicated &

while true; do sleep 1; done
