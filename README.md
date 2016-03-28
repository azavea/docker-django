# docker-django

[![Docker Repository on Quay.io](https://quay.io/repository/azavea/django/status "Docker Repository on Quay.io")](https://quay.io/repository/azavea/django)
[![Apache V2 License](http://img.shields.io/badge/license-Apache%20V2-blue.svg)](https://github.com/azavea/docker-django/blob/develop/LICENSE)

A `Dockerfile` based off of [`python:2.7-slim`](https://registry.hub.docker.com/_/python/) that installs dependencies for a Django project with geospatial support.

Includes:

  - gdal
  - postgres/psycopg2
  - gevent
  - gunicorn

## Usage

First, build the container:

```bash
$ docker build -t quay.io/azavea/django:latest .
```

Then, run the container:

```bash
$ docker run --rm --entrypoint pip quay.io/azavea/django:latest freeze
Django==1.9.6
gevent==1.1.1
greenlet==0.4.9
gunicorn==19.4.5
psycopg2==2.6.1
```
