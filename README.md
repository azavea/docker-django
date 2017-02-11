# docker-django

This repository contains a collection of templated `Dockerfile` for image variants designed to support Django through the Gunicorn WSGI HTTP server. In addition, these images include support for GeoDjango, PostgreSQL, and Gevent.

## Usage

### Template Variables

- `PYTHON_VERSION` - Python interpreter version
- `PG_MAJOR` - Major version number of the target PostgreSQL database instance
- `PG_VERSION` - Version number for `postgresql-client` package
- `VARIANT` - Base container image variant

### Testing

An example of how to use `cibuild` to build and test an image:

```bash
$ CI=1 VERSION=1.9 PYTHON_VERSION=2.7 \
  PG_MAJOR=9.6 PG_VERSION=9.5.4-r0 VARIANT=alpine \
  ./scripts/cibuild
```
