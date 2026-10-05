FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends bash ca-certificates dnsutils hostname iproute2 iputils-ping mawk procps && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY server_check.sh ./server_check.sh

RUN chmod +x ./server_check.sh

CMD ["./server_check.sh"]
