#!/bin/bash 

# build docker image dari berkas dockerfile
docker build -t ghcr.io/ekowinardi/karsajobs:latest .
# login ke github pacakge
echo $CR_PAT | docker login ghcr.io -u ekowinardi --password-stdin
# push image ke github pacakge
docker push ghcr.io/ekowinardi/karsajobs:latest