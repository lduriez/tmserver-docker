# tmserver-docker
Trackmania Nation Forever Docker Server

Warning Test Branch

You can find it on Docker Hub [lduriez/tmserver](https://hub.docker.com/r/lduriez/tmserver)

Only lan dedicated is enable (internet dedicated will be added in future version)

## Exposed ports :
* 2350/tcp game server port
* 2350/udp game server port
* 3450/tcp p2p game server port
* 5000/tcp xmlrpc remote control port

## Environment variables :
* SERVER_NAME name of your server (default is 'Trackmania Server')
* SERVER_DESC description of your server (default is 'This is a Trackmania Server')
* SERVER_SA_PASSWORD superadmin management password  (default is 'SuperAdmin')
* SERVER_ADM_PASSWORD admin management password (default is 'Admin')
