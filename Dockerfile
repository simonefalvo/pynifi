FROM apache/nifi:latest

USER root

#RUN wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
#RUN tar -xf Python-3.7.3.tar.xz; rm Python-3.7.3.tar.xz
#RUN cd Python-3.7.3; 
#RUN apt install --assume-yes gcc make 
#RUN sh ./configure
#RUN make; make test; make install
RUN apt update
RUN apt install --assume-yes gcc python3 python3-pip; pip3 install pandas

EXPOSE 8080 8082
