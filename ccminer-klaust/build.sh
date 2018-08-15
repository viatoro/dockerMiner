#!/bin/sh
echo Building viatoro/ccminer-klaust:build

docker build -t viatoro/ccminer-klaust:build . -f Dockerfile.build

docker container create --name extract viatoro/ccminer-klaust:build  
docker container cp extract:/home/miner/ccminer ./ccminer
docker container rm -f extract

echo Building viatoro/ccminer-klaust:latest

docker build --no-cache -t viatoro/ccminer-klaust:latest .
rm ./ccminer
