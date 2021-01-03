FROM elasticsearch:6.8

# Install pbzip2 for parallel extraction
RUN apk update \
    && apk add \
        bzip2 \
        wget \
    && rm -rf /var/cache/apk/*

WORKDIR /photon
ADD https://github.com/komoot/photon/releases/download/0.3.4/photon-0.3.4.jar /photon/photon.jar
COPY entrypoint.sh ./entrypoint.sh

VOLUME /photon/photon_data
EXPOSE 2322

ENTRYPOINT /photon/entrypoint.sh
