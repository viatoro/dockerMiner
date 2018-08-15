#!/bin/sh
echo Building viatoro/ccminer-tpruvot:build

docker build -t viatoro/ccminer-tpruvot:build . -f Dockerfile.build

docker container create --name extract viatoro/ccminer-tpruvot:build  
docker container cp extract:/home/miner/ccminer ./ccminer
docker container rm -f extract

echo Building viatoro/ccminer-tpruvot:latest

docker build --no-cache -t viatoro/ccminer-tpruvot:latest .
rm ./ccminer
