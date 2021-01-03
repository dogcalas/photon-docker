FROM elasticsearch:6.8.13

# Install pbzip2 for parallel extraction
RUN apt update -y\
    && apt add  -y\
        bzip2 \
        wget 

WORKDIR /photon
ADD https://github.com/komoot/photon/releases/download/0.3.4/photon-0.3.4.jar /photon/photon.jar
COPY entrypoint.sh ./entrypoint.sh

VOLUME /photon/photon_data
EXPOSE 2322

ENTRYPOINT /photon/entrypoint.sh
