# EFREI M1 DNS
> Provided a CentOS based dns server with a bastion client to test dns queries

## Prerequisites
> To play with this config, you must have docker installed and the docker-compose CLI > 3.8 installed

## Installation
> To install this project you just have to type the following command on your dev environment

```bash
docker-compose up -d
```

## Test & learn
> You will have to connect to the bastion container to makes test

```
dig +short pares-donadei.com bind-dns
```