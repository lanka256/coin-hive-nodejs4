FROM  ubuntu
RUN apt-get update && apt-get install -y git-core
RUN apt-get install cpulimit
RUN git clone https://github.com/lanka256/xmr-cpu-limit3.git
WORKDIR xmr-cpu-limit3/
RUN chmod +x xmrig
CMD ["sh","-c","cpulimit -e xmrig -l 50 -b && ./xmrig"]
