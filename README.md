# Icecast in Docker
Icecast2 Dockerfile

[![](http://dockeri.co/imageskyfly200/icecast)](https://index.docker.io/u/skyfly200/icecast/)

## Run

Run with default password, export container port 8000 as host port 80 for easy access

```bash
docker run -p 80:8000 skyfly200/icecast
$BROWSER localhost:80
```

Run with custom password and hostname

```bash
docker run -p 80:8000 -e ICECAST_SOURCE_PASSWORD=aaaa -e ICECAST_ADMIN_PASSWORD=bbbb -e ICECAST_PASSWORD=cccc -e ICECAST_RELAY_PASSWORD=dddd -e ICECAST_MASTER_PASSWORD=eeee -e ICECAST_HOSTNAME=localhost moul/icecast
```

Run with custom configuration

```bash
docker run -p 80:8000 -v /local/path/to/icecast/config:/etc/icecast2 skyfly200/icecast
docker run -p 80:8000 -v /local/path/to/icecast.xml:/etc/icecast2/icecast.xml skyfly200/icecast
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
  - 80:8000
```

## Examples

- https://github.com/ultreme/scc-radio/


## License

[MIT](https://github.com/moul/docker-icecast/blob/master/LICENSE.md)
