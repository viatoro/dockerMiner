#!/bin/sh
echo Building viatoro/cpuminer-opt:build

docker build -t viatoro/cpuminer-opt:build . -f Dockerfile.build

docker container create --name extract viatoro/cpuminer-opt:build  
docker container cp extract:/home/miner/cpuminer ./cpuminer
docker container rm -f extract

echo Building viatoro/cpuminer-opt:latest

docker build --no-cache -t viatoro/cpuminer-opt:latest .
#rm ./ccminer
