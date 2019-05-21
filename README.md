# Icecast in Docker [![Build Status](https://travis-ci.org/moul/docker-icecast.svg?branch=master)](https://travis-ci.org/moul/docker-icecast)

Icecast2 Dockerfile

[![](http://dockeri.co/image/moul/icecast)](https://index.docker.io/u/moul/icecast/)

## Run

Run with default password, export port 8000 as port 80 for easy access

```bash
docker run -p 8000:80 skyfly200/icecast
$BROWSER localhost:80
```

Run with custom password and hostname

```bash
docker run -p 8000:80 -e ICECAST_SOURCE_PASSWORD=aaaa -e ICECAST_ADMIN_PASSWORD=bbbb -e ICECAST_PASSWORD=cccc -e ICECAST_RELAY_PASSWORD=dddd -e ICECAST_MASTER_PASSWORD=eeee -e ICECAST_HOSTNAME=localhost moul/icecast
```

Run with custom configuration

```bash
docker run -p 8000:80 -v /local/path/to/icecast/config:/etc/icecast2 skyfly200/icecast
docker run -p 8000:80 -v /local/path/to/icecast.xml:/etc/icecast2/icecast.xml skyfly200/icecast
```

Extends Dockerfile

```Dockerfile
FROM skyfly200/icecast
ADD ./icecast.xml /etc/icecast2
```

Docker-compose

```yaml
icecast:
  image: skyfly200/icecast
  volumes:
  - logs:/var/log/icecast2
  - /etc/localtime:/etc/localtime:ro
  environment:
  - ICECAST_SOURCE_PASSWORD=aaa
  - ICECAST_ADMIN_PASSWORD=bbb
  - ICECAST_PASSWORD=ccc
  - ICECAST_RELAY_PASSWORD=ddd
  - ICECAST_MASTER_PASSWORD=eee
  - ICECAST_HOSTNAME=localhost
  ports:
  - 8000:80
```

## Examples

- https://github.com/ultreme/scc-radio/


## License

[MIT](https://github.com/moul/docker-icecast/blob/master/LICENSE.md)
