# Elasticsearch image

## Requirements

You must have [Docker](https://www.docker.com/) >= 1.5.

## What's inside

* [elasticsearch 1.6.2](https://www.elastic.co/products/elasticsearch)
* [HQ plugin](https://github.com/royrusso/elasticsearch-HQ)
* [HEAD plugin](https://mobz.github.io/elasticsearch-head)

### Configuration

### Ports

You can bind ports :

* 9200
* 9300

### Volumes

You can mount directories:

* /data : parent dir of all shared directories
* /data/data
* /data/log
* /data/plugins
* /data/work

## Usage

```bash
# pull (auto) and run
# mount volumes
docker run \
  -d \
  --name elasticsearch \
  -p 9200:9200 \
  -p 9300:9300 \
  -v ~/elasticsearch:/data \
  jpchateau/elasticsearch
```