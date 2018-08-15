#!/bin/sh
echo Building viatoro/ccminer-djm34:build

docker build -t viatoro/ccminer-djm34:build . -f Dockerfile.build

docker container create --name extract viatoro/ccminer-djm34:build  
docker container cp extract:/home/miner/ccminer ./ccminer
docker container rm -f extract

echo Building viatoro/ccminer-djm34:latest

docker build --no-cache -t viatoro/ccminer-djm34:latest .
rm ./ccminer
