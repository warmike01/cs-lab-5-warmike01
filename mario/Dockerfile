FROM ubuntu:lucid

RUN sed -i 's/archive/old-releases/' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    apt-utils \
    mesa-utils \
    nano \
    unzip \
    && rm -rf /var/lib/apt/lists/*
        
RUN mkdir -p /var/lib/apt/lists/partial && apt-get update && apt-get install -y build-essential libsdl-dev \
                        libsdl-image* \
                        libsdl-mixer* \
                        libsdl-ttf* \
                        libsdl-gfx* \
                        freetype*

ADD https://sourceforge.net/projects/mmario/files/Mega%20Mario%20Full%20Game/Mega%20Mario%20v1.7%20%28Full%20Game%2C%20high%20Quality%20music%29/MegaMario_v1.7_full.zip/download MegaMario_v1.7_full.zip 

RUN unzip MegaMario_v1.7_full.zip -d MegaMario_v1.7_full

RUN sed -i 's/PATH_MAX/1024/g' /MegaMario_v1.7_full/src/Global.h

RUN cd MegaMario_v1.7_full && make PREFIX=/usr && make PREFIX=/usr install
