# A Docker image for Bosun
- [Bosun homepage](https://bosun.org/)
- [An image page at Docker Hub](https://hub.docker.com/r/mkuzmin/bosun)

An example of `docker-compose.yml`:
```
version: '2'
services:
  server:
    image: mkuzmin/bosun
    volumes:
      - ./bosun.conf:/bosun.conf:ro
      - data:/data
    command: -c /bosun.conf
    ports:
      - "8070:8070"
volumes:
  data: {}
```
