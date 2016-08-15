FROM java:8-jre
MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

# Elasticsearch verion
ENV ES_VERSION 1.7.5

# update OS and install nginx
RUN \
    cd / && \
    wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz && \
    tar xvzf elasticsearch-$ES_VERSION.tar.gz && \
    rm -f elasticsearch-$ES_VERSION.tar.gz && \
    mv /elasticsearch-$ES_VERSION /elasticsearch

# add resources
COPY ./Resources/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# install plugins
RUN  \
    /elasticsearch/bin/plugin -i royrusso/elasticsearch-HQ && \
    /elasticsearch/bin/plugin -i mobz/elasticsearch-head && \
    /elasticsearch/bin/plugin -i karmi/elasticsearch-paramedic/1.0 && \
    /elasticsearch/bin/plugin -i lmenezes/elasticsearch-kopf/1.6.1 && \
    /elasticsearch/bin/plugin -i lukas-vlcek/bigdesk

# expose ports
EXPOSE 9200
EXPOSE 9300

# define mountable volumes
VOLUME ["/data", "/data/work", "/data/log", "/data/data"]

# add launch script
COPY ./Resources/startup.sh /startup.sh

# define entrypoint
ENTRYPOINT ["/bin/bash", "/startup.sh"]

# define workdir
WORKDIR /data
