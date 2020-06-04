# tmserver-docker

Trackmania Nation Forever Docker Server

You can find it on Docker Hub [lduriez/tmserver](https://hub.docker.com/r/lduriez/tmserver)

Only lan dedicated is enable (internet dedicated will be added in future version)

Server management webui provided base on [AdminServ](https://github.com/Chris92de/AdminServ)

## Running

On a docker environment simply do the following

```bash
docker run -d -p 2350:2350 -p 3450:3450 -p 80:80 --name tm-server lduriez/tmserver
```

You can add environment variable to modify default values : [#Environment variables](#environment-variables)

### Configure Server Management Webui

Visit `http:<host-server-of-the-conntainer>` and start configuration by setting the password of your choice.
This password will be the AdminServ password for configurations (add TM server)

Then add TM server information (you can let all by default). Be sure that `Address` is set to `localhost` in order to manage our embed server.

Once you saved, you can go to Servers list by pushing "Servers" button and then go to management server list with button "Back".

You should see the server you added, in the to banner you ca go to the management environment.
Select the server you want to manage, the admin level you want to go in, and tape the password of this admion level.

By default `SuperAdmin` password is `SuperAdmin`, `Admin` password is `Admin`, `User` password is `User`. (You can modify the admin level in configuration settings `http:<host-server-of-the-conntainer>/config`)

Congratulation you can now manage your TM server.

Enjoy your game.

## Exposed ports

* 2350/tcp game server port
* 2350/udp game server port
* 3450/tcp p2p game server port
* 80/tcp  server management webui port

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