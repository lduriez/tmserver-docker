# tmserver-docker

Trackmania Nation Forever Docker Server

You can find it on Docker Hub [lduriez/tmserver](https://hub.docker.com/r/lduriez/tmserver)

Only lan dedicated is enable (internet dedicated will be added in future version)

Server management webui provided base on [AdminServ](https://github.com/Chris92de/AdminServ)

## Exposed ports

* 2350/tcp game server port
* 2350/udp game server port
* 3450/tcp p2p game server port
* 5000/tcp xmlrpc remote control port
* 443/tcp  server management webui port

## Environment variables

* SERVER_NAME name of your server (default is 'Trackmania Server')
* SERVER_DESC description of your server (default is 'This is a Trackmania Server')
* SERVER_SA_PASSWORD superadmin management password  (default is 'SuperAdmin')
* SERVER_ADM_PASSWORD admin management password (default is 'Admin')

## Commit convention

Format : `<type>(<portée>): <sujet>`

### type

* `build` : changements qui affectent le système de build ou des dépendances externes (npm, make…)
* `ci` : changements concernant les fichiers et scripts d’intégration ou de configuration (Travis, Ansible, BrowserStack…)
* `feat` : ajout d’une nouvelle fonctionnalité
* `fix` : correction d’un bug
* `perf` : amélioration des performances
* `refactor` : modification qui n’apporte ni nouvelle fonctionnalité ni d’amélioration de performances
* `style` : changement qui n’apporte aucune altération fonctionnelle ou sémantique (indentation, mise en forme, ajout d’espace, renommante d’une variable…)
* `docs` : rédaction ou mise à jour de documentation
* `test` : ajout ou modification de tests
* `revert` : annuler un précédent commit, forme `revert sujet du commit annulé hash du commit annulé`

### sujet

* `add`
* `change`
* `update`
* `remove`

[source](https://buzut.net/git-bien-nommer-ses-commits/)