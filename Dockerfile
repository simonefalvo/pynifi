FROM apache/nifi:latest

USER root

RUN wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
RUN tar -xf Python-3.7.3.tar.xz; rm Python-3.7.3.tar.xz
RUN cd Python-3.7.3.tar.xz; 
RUN apt install gcc
RUN ./configure; make; make test; make install
RUN apt install python3-pip; pip3 install pandas
