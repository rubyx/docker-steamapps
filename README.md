# Steam Docker Container - 7 Days to Die (Dedicated Server)

## Introduction
Simple Docker container for the 7 Days to Die dedicated server.
Exposes the telnet interface to localhost on port 8081, and, binds the game
server to all the host systems network interfaces.

## Setting Up
The `docker-compose` command may take some time to run.

    $ ./setup.sh
    $ docker-compose build

## Starting Server
    $ docker-compose up

## Admin console (telnet)
The default password is set to "CHANGEME"

    $ telnet localhost 8081

## Configuration
The main server configuration is contained in the file `scripts/default.xml`
feel free to add your customisations there. You can also copy this file and
create multiple configurations. To use a different configuration, edit the
`docker-compose.yml` file and change the `SERVER_CONFIG` line to
reflect the name of your new configuration profile.

To add yourself as an admin so you can use the in-game drop down console, you
need to add your steam id into the `saves/serveradmin.xml` file, instructions
on doing this are at the top of this file.
