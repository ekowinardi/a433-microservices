#! /bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images 

# Mengubah nama image agar sesuai dengan format github packages
docker tag item-app:v1 ghcr.io/ekowinardi/item-app:v1

# Login ke github package (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo $PAT | docker login ghcr.io --username ekowinardi --password-stdin
# Mengunggah image ke Github Packages
docker push ghcr.io/ekowinardi/item-app:v1