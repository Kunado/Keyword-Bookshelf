# cgi scripts and Docker environment
## Command examples

### build an image and create a container

```
docker build -t alpine:apache .
docker run -p 8080:80 -v $(pwd)/web:/web --name alpine_webserver alpine:apache
```

### restart the container

```
docker start alpine_webserver
```

### execute a command in the contaniner

```
docker exec -it alpine_webserver /bin/ash
```