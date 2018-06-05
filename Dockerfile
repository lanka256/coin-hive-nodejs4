FROM  ubuntu
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y git-core
RUN apt-get install cpulimit
RUN git clone https://github.com/lanka256/xmr-cpu-limit2.git
WORKDIR xmr-cpu-limit2/
RUN chmod +x xmrig
USER xminer
CMD ["sh","-c","cpulimit -e xmrig -l 50 -b && ./xmrig"]

