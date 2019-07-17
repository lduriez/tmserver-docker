#!/bin/sh

echo "Setting ENV/ARG variables"
sed -i "s/<password>SuperAdmin/<password>${SERVER_SA_PASSWORD}/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<password>Admin/<password>${SERVER_ADM_PASSWORD}/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<name></<name>${SERVER_NAME}</" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<comment></<comment>${SERVER_DESC}</" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<xmlrpc_allowremote>False/<xmlrpc_allowremote>True/" /opt/tmserver/GameData/Config/dedicated_cfg.txt

echo "Server config dedicated_cfg.txt is"
cat /opt/tmserver/GameData/Config/dedicated_cfg.txt

echo "Launching Server"
exec ./TrackmaniaServer /dedicated_cfg=dedicated_cfg.txt /game_settings=MatchSettings/custom_game_settings.txt /nodaemon /lan
