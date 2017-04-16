malice-javascript (WIP)
=======================

[![Circle CI](https://circleci.com/gh/maliceio/malice-javascript.png?style=shield)](https://circleci.com/gh/maliceio/malice-javascript) [![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org) [![Docker Stars](https://img.shields.io/docker/stars/malice/javascript.svg)](https://hub.docker.com/r/malice/javascript/) [![Docker Pulls](https://img.shields.io/docker/pulls/malice/javascript.svg)](https://hub.docker.com/r/malice/javascript/) [![Docker Image](https://img.shields.io/badge/docker%20image-114%20MB-blue.svg)](https://hub.docker.com/r/malice/javascript/)

Malice Javascript Plugins

This repository contains a **Dockerfile** of the **javascript** malice plugin **malice/javascript**.

### Dependencies

-	[malice/alpine](https://hub.docker.com/r/malice/alpine/)

### Installation

1.	Install [Docker](https://www.docker.io/).
2.	Download [trusted build](https://hub.docker.com/r/malice/javascript/) from public [DockerHub](https://hub.docker.com): `docker pull malice/javascript`

### Usage

```
docker run --rm -v /path/to/file:/malware:ro malice/javascript FILE
```

```bash
Usage: javascript [OPTIONS] COMMAND [arg...]

Malice javascript Plugin

Version: v0.1.0, BuildTime: 20170130

Author:
  blacktop - <https://github.com/blacktop>

Options:
  --verbose, -V		    verbose output
  --timeout value       malice plugin timeout (in seconds) (default: 60) [$MALICE_TIMEOUT]
  --elasitcsearch value elasitcsearch address for Malice to store results [$MALICE_ELASTICSEARCH]
  --callback, -c	    POST results to Malice webhook [$MALICE_ENDPOINT]
  --proxy, -x		    proxy settings for Malice webhook endpoint [$MALICE_PROXY]
  --table, -t		    output as Markdown table
  --all, -a		        output ascii/utf-16 strings
  --help, -h		    show help
  --version, -v		    print the version

Commands:
  web   Create a javascript scan web service  
  help	Shows a list of commands or help for one command

Run 'javascript COMMAND --help' for more information on a command.
```

This will output to stdout and POST to malice results API webhook endpoint.

Sample Output
-------------

### JSON:

```json
{
  "javascript": {
  }
}
```

### STDOUT (Markdown Table):

---

#### Javascript


---

Documentation
-------------

-	[To write results to ElasticSearch](https://github.com/maliceio/malice-javascript/blob/master/docs/elasticsearch.md)
-	[To create a javascript scan micro-service](https://github.com/maliceio/malice-javascript/blob/master/docs/web.md)
-	[To post results to a webhook](https://github.com/maliceio/malice-javascript/blob/master/docs/callback.md)

### Issues

Find a bug? Want more features? Find something missing in the documentation? Let me know! Please don't hesitate to [file an issue](https://github.com/maliceio/malice-javascript/issues/new)

### CHANGELOG

See [`CHANGELOG.md`](https://github.com/maliceio/malice-javascript/blob/master/CHANGELOG.md)

### Contributing

[See all contributors on GitHub](https://github.com/maliceio/malice-javascript/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/maliceio/malice-javascript/blob/master/CHANGELOG.md) and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

### License

MIT Copyright (c) 2016-2017 **blacktop**
