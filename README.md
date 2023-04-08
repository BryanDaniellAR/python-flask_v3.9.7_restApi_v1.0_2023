# Flask example

Using Flask to build a Restful API Server with Swagger document.

## Installation

Install with pip:

```
$ pip install -r requirements.txt
```

## Flask Configuration

#### Example

```
app = Flask(__name__)
app.config['DEBUG'] = True
```

#### Builtin Configuration Values

SERVER_NAME: the name and port number of the server.

JSON_SORT_KEYS : By default Flask will serialize JSON objects in a way that the keys are ordered.

- [reference¶](http://flask.pocoo.org/docs/0.12/config/)

### OAuth Setup

add your `client_id` and `client_secret` into config file.

### ESDAO Setup

add your `ES host` and `ES port` into config file

## Run Flask

### Run flask for develop

```
$ python app.py
```

In flask, Default port is `5000`

Swagger document page:  `http://127.0.0.1:5000/api`

## Unittest

```
$ nosetests webapp/ --with-cov --cover-html --cover-package=app
```

- --with-cov : test with coverage
- --cover-html: coverage report in html format

## Reference

Offical Website

- [Flask](http://flask.pocoo.org/)
- [Flask Extension](http://flask.pocoo.org/extensions/)

Tutorial

- [Flask Overview](https://www.slideshare.net/maxcnunes1/flask-python-16299282)
- [In Flask we trust](http://igordavydenko.com/talks/ua-pycon-2012.pdf)

[Wiki Page](https://github.com/tsungtwu/flask-example/wiki)

## Changelog

- Version 1.0 : basic flask-example
