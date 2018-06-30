# Keyword Bookshelf
This system provides the way to find books by a keyword.

## cgi scripts and Docker environment
#### build an image and create a container

```
docker build -t alpine:apache .
docker run -p 80:80 -v $(pwd)/web:/web --name alpine_webserver alpine:apache
```

#### restart the container

```
docker start alpine_webserver
```

#### execute a command in the contaniner

```
docker exec -it alpine_webserver /bin/ash
```
