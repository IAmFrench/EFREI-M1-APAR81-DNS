# EFREI M1 DNS
> Provided a CentOS based dns server with a bastion client to test dns queries

![Overview Diagram](./artefacts/APAR81-PARES-DONADEI-TP4-DNS.drawio.svg)

## Prerequisites
> To play with this config, you must have docker installed and the docker-compose CLI > 3.8 installed

![Docker & docker-compose versions](./artefacts/docker-and-docker-compose-versions.png)

## Installation
> To install this project you just have to type the following command on your dev environment

```bash
docker-compose up -d
```

On the first launch the docker engine will download and build all required images for our containers, this can takes severals seconds:

![First time docker-compose up](./artefacts/docker-compose-up-first-time.png)

Or if you already have images for our solution the deployment will takes less than 5 seconds !

![Second time docker-compose up -d](./artefacts/docker-compose-up-second-time.png)

You can always check if the containers are running by opening the Docker Dashboard:

![Docker dashboard list of containers](./artefacts/docker-dashboard-list-of-containers.png)

## Test & learn
> You will have to connect to the bastion container to makes test

To connect directly to the bastion, just open the Docker Dashboard and click on the `CLI` button for the bastion container

![Docker Dashboard open bastion cli](./artefacts/docker-dashboard-open-bastion-cli.png)

And finally you can types your commands in the shell:

![Bastion CLI - Dig google.fr using the bind-dns server](./artefacts/bastion-cli-dig-google.png)

```
dig +short pares-donadei.com bind-dns
```