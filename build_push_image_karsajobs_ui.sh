#!/bin/bash 
# build docker image dari berkas dockerfile (karsajobs-ui)
docker build -t ghcr.io/ekowinardi/karsajobs-ui:latest .
# login ke github pacakge
echo $CR_PAT | docker login -u ghcr.io/ekowinardi --password-stdin
# push image ke github pacakge
docker push ghcr.io/ekowinardi/karsajobs-ui:latest