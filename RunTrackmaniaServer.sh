#!/bin/sh

sed -i "s/<name>/<name>${SERVER_NAME}/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<comment>/<comment>${SERVER_DESC}/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<xmlrpc_allowremote>False/<xmlrpc_allowremote>True/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
cat /opt/tmserver/GameData/Config/dedicated_cfg.txt

exec ./TrackmaniaServer /dedicated_cfg=dedicated_cfg.txt /game_settings=MatchSettings/custom_game_settings.txt /nodaemon /lan
