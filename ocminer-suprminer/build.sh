#!/bin/sh
echo Building viatoro/ccminer-ocminer-suprminer:build

docker build -t viatoro/ccminer-ocminer-suprminer:build . -f Dockerfile.build

docker container create --name extract viatoro/ccminer-ocminer-suprminer:build  
docker container cp extract:/home/miner/ccminer ./ccminer
docker container rm -f extract

echo Building viatoro/ccminer-ocminer-suprminer:latest

docker build --no-cache -t viatoro/ccminer-ocminer-suprminer:latest .
rm ./ccminer
