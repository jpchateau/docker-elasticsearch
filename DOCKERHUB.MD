## About Elasticsearch

Elasticsearch is a sophisticated search engine.

## About this image

* [Elasticsearch 2.3.5](https://www.elastic.co/products/elasticsearch)
* [HQ plugin](https://github.com/royrusso/elasticsearch-HQ)
* [HEAD plugin](https://mobz.github.io/elasticsearch-head)

### Build

```bash
docker pull jpchateau/elasticsearch
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
