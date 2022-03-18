# docker-django

[![CI](https://github.com/azavea/docker-django/workflows/CI/badge.svg?branch=master)](https://github.com/azavea/docker-django/actions?query=workflow%3ACI)

This repository contains a collection of templated `Dockerfile` for image variants designed to support Django through the Gunicorn WSGI HTTP server. In addition, these images include support for GeoDjango, PostgreSQL, and Gevent.

## Usage

### Template Variables

- `PYTHON_VERSION` - Python interpreter version (for `python:*-slim-bullseye` [images](https://hub.docker.com/_/python/))

### Testing

An example of how to use `cibuild` to build and test an image:

```bash
$ CI=1 VERSION=3.2 PYTHON_VERSION=3.9 \
  ./scripts/cibuild
```
