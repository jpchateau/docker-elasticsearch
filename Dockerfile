FROM java:8-jre
MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

# Elasticsearch verion
ENV ES_VERSION 1.6.2

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
    /elasticsearch/bin/plugin -i royrusso/elasticsearch-HQ && \
    /elasticsearch/bin/plugin -i mobz/elasticsearch-head

# expose ports
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300

# define mountable volumes
VOLUME ["/data", "/data/work", "/data/log", "/data/data"]

# add launch script
COPY ./resources/startup.sh /startup.sh

# define entrypoint
ENTRYPOINT ["/bin/bash", "/startup.sh"]

# define workdir
WORKDIR /data
