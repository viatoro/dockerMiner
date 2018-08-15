FROM nvidia/cuda:9.0-runtime
#ENTRYPOINT ["/home/miner/run-miner.sh"]

#RUN groupadd -g 2000 miner && \
#    useradd -u 2000 -g miner -m -s /bin/bash miner && \
#    echo 'miner:miner' | chpasswd
RUN apt-get -y update && apt-get -y install --no-install-recommends libssl-dev libcurl4-openssl-dev libgomp1 && rm -rf /var/lib/apt/lists/*

#COPY run-miner.sh /home/miner/
#RUN chmod +x /home/miner/run-miner.sh
#RUN chown miner:miner /home/miner/run-miner.sh

#USER miner
#RUN cd && git clone https://github.com/ocminer/suprminer.git build && cd ~/build && git checkout tags/1.6 && ./autogen.sh && ./configure --with-cuda=/usr/local/cuda && make -j4 && cp ~/build/ccminer ~/ccminer && rm -rf ~/build
#COPY ccminer .
#RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY ccminer .
#CMD ["./ccminer"]  
ENTRYPOINT ["./ccminer"]
