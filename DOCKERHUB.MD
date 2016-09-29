# About Elasticsearch

[![](https://images.microbadger.com/badges/image/jpchateau/elasticsearch.svg)](https://microbadger.com/images/jpchateau/elasticsearch)

Elasticsearch is a sophisticated search engine.

# About this image

* [Elasticsearch 2.4.1](https://www.elastic.co/products/elasticsearch)
* [HQ plugin](http://www.elastichq.org/)
* [HEAD plugin](https://mobz.github.io/elasticsearch-head)
* [Paramedic plugin](https://github.com/karmi/elasticsearch-paramedic)
* [kopf plugin](https://github.com/lmenezes/elasticsearch-kopf)

## Build

```bash
$ docker pull jpchateau/elasticsearch
```
or
```bash
$ git clone git@github.com:jpchateau/docker-elasticsearch.git
$ cd docker-elasticsearch
$ docker build -t jpchateau/elasticsearch .
```

## Usage

### Run

```bash
$ docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -v ~/path/to/data:/data jpchateau/elasticsearch
```

### Plugins links

* [HQ](http://localhost:9200/_plugin/hq/)
* [HEAD](http://localhost:9200/_plugin/head/)
* [Paramedic](http://localhost:9200/_plugin/paramedic/)
* [kopf](http://localhost:9200/_plugin/kopf/)
