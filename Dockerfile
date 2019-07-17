FROM ubuntu:disco

RUN mkdir /opt/tmserver

WORKDIR /opt/tmserver

COPY TrackmaniaServer_2011-02-21.zip /opt/tmserver
RUN apt-get update && apt-get install -y unzip
RUN unzip /opt/tmserver/TrackmaniaServer_2011-02-21.zip -d /opt/tmserver
COPY custom_game_settings.txt /opt/tmserver/GameData/Tracks/MatchSettings/
COPY RunTrackmaniaServer.sh /opt/tmserver/

ARG SERVER_NAME='$w$F60DSI-$F90Ankama'
ARG SERVER_DESC='Bienvenue sur le serveur docker Trackmania de la team DSI'
ENV SERVER_NAME $SERVER_NAME
ENV SERVER_DESC $SERVER_DESC

EXPOSE 5000/tcp
EXPOSE 2350/tcp
EXPOSE 2350/udp
EXPOSE 3450/tcp

ENTRYPOINT ["/opt/tmserver/RunTrackmaniaServer.sh"]
