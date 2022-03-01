#!/bin/bash


echo [Git-Init] Initializing SSH key for git
echo [Git-Init] Running in Ubuntu 24
echo [Git-Init] Paraphrase will be always 1234

echo [Git-Init] Creating .ssh folder
mkdir -p ~/.ssh/

echo [Git-Init] Installing SSH
apt install ssh -y

echo [Git-Init] Verificating if SSH is running
eval $(ssh-agent -s)

echo [Git-Init] Generating key
ssh-keygen -t rsa -b 4096 -C “davidvalorwork@gmail.com”

echo [Git-Init] Adding key to SSH
ssh-add ~/ssh/id_rsa

echo [Git-Init] Add this key to Git
