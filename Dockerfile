FROM nimmis/alpine-apache
RUN apk add --no-cache ruby ruby-bundler
ENV ROOT_URL http://localhost:8080/
ENV CGI_URL http://localhost:8080/cgi-bin/