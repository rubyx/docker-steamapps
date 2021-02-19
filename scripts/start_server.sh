#! /bin/sh

export SteamAppId=892970
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH

cd "$HOME/valheim"

echo "SERVER CONFIGURATION"
echo "  -- Server Name: $SERVER_NAME"
echo "  -- Server Port: 2456"
echo "  -- World Name: $SERVER_WORLD"
echo "  -- Server Password: $SERVER_PASSWORD"
echo
echo "Starting server PRESS CTRL-C to exit"
echo

# Tip: Make a local copy of this script to avoid it being overwritten by steam.
# NOTE: Minimum password length is 5 characters & Password cant be in the server name.
# NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.
exec ./valheim_server.x86_64 -name "$SERVER_NAME" -port 2456 -world "$SERVER_WORLD" -password "$SERVER_PASSWORD"

