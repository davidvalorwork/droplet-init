#!/bin/bash

echo [Init] Cloning notes repo
cd ~
git clone git@github.com:davidvalorwork/notas.git

echo [Init] Cloning all projects
bash ~/notas/scripts/repos
