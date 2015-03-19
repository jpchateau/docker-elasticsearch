#
# Elasticsearch Dockerfile
# git@github.com:monsieurchico/docker-elasticsearch.git
#
FROM dockerfile/java:oracle-java8
MAINTAINER Romain Derocle "rderocle@gmail.com"

# prevent debian errors
ENV DEBIAN_FRONTEND noninteractive
ENV ES_VERSION 1.4.4

# update os and install nginx
RUN \
    cd / && \
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz && \
    tar xvzf elasticsearch-$ES_VERSION.tar.gz && \
    rm -f elasticsearch-$ES_VERSION.tar.gz && \
    mv /elasticsearch-$ES_VERSION /elasticsearch

# add resources
COPY ./resources/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# install plugins
RUN  \
    /elasticsearch/bin/plugin install royrusso/elasticsearch-HQ

# expose ports
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300

# define mountable volumes
VOLUME ["/shdataared", "/data/work", "/data/log", "/data/plugins", "/data/data"]

# add launch script
COPY ./resources/startup.sh /startup.sh

# define entrypoint
ENTRYPOINT ["/bin/bash", "/startup.sh"]

# define workdir
WORKDIR /data