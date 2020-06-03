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


We can check if the service is running by checking the list of process using the `ps -aux` command:
![Docker exec and check processes](./artefacts/bind9-container-list-process.png)

## Test & learn
> You will have to connect to the bastion container to makes test

To connect directly to the bastion, just open the Docker Dashboard and click on the `CLI` button for the bastion container

![Docker Dashboard open bastion cli](./artefacts/docker-dashboard-open-bastion-cli.png)

Or you can use the `docker exec` command to open a terminal (you will need the container id)
![Windows Terminal - Open an interactive terminal using docker exec](./artefacts/terminal-connect-to-bastion-using-docker-exec.png)

And finally you can types your commands in the shell:
```bash
dig @bind-dns google.com. any
```

![dig google using our dns server](./artefacts/bastion-cli-dig-google.com.png)