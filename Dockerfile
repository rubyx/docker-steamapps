FROM cm2network/steamcmd:root

ARG STEAM_APP_ID
ARG STEAM_APP_DIR

USER steam
WORKDIR /home/steam

# Install Game
RUN /home/steam/steamcmd/steamcmd.sh \
  +login anonymous \
  +force_install_dir $STEAM_APP_DIR \
  +app_update $STEAM_APP_ID \
  +quit
