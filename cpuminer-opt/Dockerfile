FROM ubuntu:14.04

RUN apt-get -y update && apt-get -y install --no-install-recommends libcurl3 libjansson4 libgmp10 && rm -rf /var/lib/apt/lists/*

WORKDIR /root/
COPY cpuminer .

ENTRYPOINT ["./cpuminer"]
