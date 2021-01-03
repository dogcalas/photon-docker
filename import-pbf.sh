#!/bin/bash


docker run -t -v /home/oinergb/maps/pbf:/data nominatim  sh /app/init.sh /data/ecuador-latest.osm.pbf postgresdata 4