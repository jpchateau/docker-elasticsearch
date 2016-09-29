FROM elasticsearch:2.4.1
MAINTAINER Jean-Philippe Chateau "contact@jpchateau.com"

# Install plugins
RUN  \
    /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ && \
    /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head && \
    /usr/share/elasticsearch/bin/plugin install karmi/elasticsearch-paramedic/1.0 && \
    /usr/share/elasticsearch/bin/plugin install lmenezes/elasticsearch-kopf/2.1.1
