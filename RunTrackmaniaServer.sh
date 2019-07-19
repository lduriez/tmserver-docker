#!/bin/sh

echo "Avaluating ENV variables"
if [[ -z "${SERVER_SA_PASSWORD}" ]]; then
	echo "No SuperAdmin password was set. Generating a random one. You can change it afterwards but it's also not that important"
	echo "Might aswell leave it as randomly generated"
	SERVER_SA_PASSWORD="SuperAdmin"
	echo "SuperAdmin password: ${SERVER_SA_PASSWORD}"
fi
if [[ -z "${SERVER_ADM_PASSWORD}" ]]; then
	echo "No Admin password was set. Generating a random one. You can change it afterwards but it's also not that important"
	echo "Might aswell leave it as randomly generated"
	SERVER_ADM_PASSWORD="Admin"
	echo "Admin password: ${SERVER_ADM_PASSWORD}"
fi
if [[ -z "${SERVER_NAME}" ]]; then
	echo "No server name was set. Defaulting to 'Trackmania Server'"
	SERVER_NAME="Trackmania Server"
fi
if [[ -z "${SERVER_DESC}" ]]; then
	echo "No server description was set. Defaulting to 'This is a Trackmania Server'"
	SERVER_DESC="This is a Trackmania Server"
fi

echo "Setting ENV/ARG variables"
sed -i "s/<password>SuperAdmin/<password>${SERVER_SA_PASSWORD}/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<password>Admin/<password>${SERVER_ADM_PASSWORD}/" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<name></<name>${SERVER_NAME}</" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<comment></<comment>${SERVER_DESC}</" /opt/tmserver/GameData/Config/dedicated_cfg.txt
sed -i "s/<xmlrpc_allowremote>False/<xmlrpc_allowremote>True/" /opt/tmserver/GameData/Config/dedicated_cfg.txt

echo "Server config dedicated_cfg.txt is"
cat /opt/tmserver/GameData/Config/dedicated_cfg.txt

echo "Launching Server"
exec "/opt/tmserver/TrackmaniaServer" "/dedicated_cfg=dedicated_cfg.txt" "/game_settings=MatchSettings/custom_game_settings.txt" "/nodaemon" "/lan"
