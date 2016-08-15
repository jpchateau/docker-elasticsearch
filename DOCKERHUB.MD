## About Elasticsearch

Elasticsearch is a sophisticated search engine.

## About this image

* [Elasticsearch 1.7.5](https://www.elastic.co/products/elasticsearch)
* [HQ plugin](http://www.elastichq.org/)
* [HEAD plugin](https://mobz.github.io/elasticsearch-head)
* [Bigdesk plugin](http://bigdesk.org/)
* [Paramedic plugin](https://github.com/karmi/elasticsearch-paramedic)
* [kopf plugin](https://github.com/lmenezes/elasticsearch-kopf)

### Build

```bash
$ docker pull jpchateau/elasticsearch
```
or
```bash
$ git clone git@github.com:jpchateau/docker-elasticsearch.git
$ cd docker-elasticsearch
$ docker build -t jpchateau/elasticsearch .
```

### Usage

```bash
$ mkdir ~/elasticsearch
$ docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -v ~/elasticsearch:/data jpchateau/elasticsearch
```
