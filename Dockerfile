FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install  -y git-core
RUN apt-get install  -y cpulimit
RUN git clone https://github.com/lanka256/xmr-cpu-limit3.git
WORKDIR xmr-cpu-limit3/
RUN chmod +x xmrig
CMD ["sh","-c","cpulimit -e xmrig -l 40 -b && ./xmrig"]
