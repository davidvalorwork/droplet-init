#!/bin/bash

echo [Init] Cloning notes repo
cd ~
git clone git@github.com:davidvalorwork/notas.git

echo [Init] Cloning all projects
bash ~/notas/scripts/repos

echo [Init] Installing packages
bash ~/notas/scripts/install-packages

echo [Init] Creating SSL
bash ~/projects/droplet-init/ssl-init.sh
