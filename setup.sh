#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y git software-properties-common make cmake sudo vim libsqlite3-dev pkg-config m4 libgmp-dev
add-apt-repository --yes ppa:avsm/ppa
apt-get update # ignore errors
apt-get install -y opam

