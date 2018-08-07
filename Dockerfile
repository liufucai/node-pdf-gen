FROM node:8.11.3

RUN apt-get update
RUN apt-get install -y graphicsmagick
RUN apt-get install -y libcairo2-dev libjpeg-dev libpango1.0-dev libgif-dev build-essential g++

# install libpng15
RUN cd /usr/local/src && wget http://download2.nust.na/pub4/sourceforge/l/li/libpng/libpng15/older-releases/1.5.28/libpng-1.5.28.tar.gz && tar zxvf libpng-1.5.28.tar.gz
RUN cd /usr/local/src/libpng-1.5.28 && ./configure --prefix=/usr/local && make && make install
ENV LD_LIBRARY_PATH=/usr/local/lib
