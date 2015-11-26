# grav

This repository contains a **dockerfile** of grav, based on [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/nimaen/grav/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/u/nimaen/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/nimaen/grav/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull nimaen/grav`

   (alternatively, you can build an image from nimaen: `docker build -t="nimaen/grav" github.com/dock-dock/grav`)


### Usage

    docker run -d nimaen/grav
