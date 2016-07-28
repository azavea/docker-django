# docker-django

[![Docker Repository on Quay.io](https://quay.io/repository/azavea/django/status "Docker Repository on Quay.io")](https://quay.io/repository/azavea/django)
[![Apache V2 License](http://img.shields.io/badge/license-Apache%20V2-blue.svg)](https://github.com/azavea/docker-django/blob/develop/LICENSE)

A `Dockerfile` based off of [`django`](https://hub.docker.com/_/django/) that installs dependencies for a Django project with geospatial support.

Includes:

  - GDAL
  - PostgreSQL
  - Gevent
  - Gunicorn

## Usage

First, build the container:

```bash
$ docker build -t quay.io/azavea/django:latest .
```

Then, run the container:

```bash
$ docker run --rm --entrypoint pip quay.io/azavea/django:latest freeze
Django==1.9.7
gevent==1.1.1
greenlet==0.4.10
gunicorn==19.6.0
psycopg2==2.6.2
```
