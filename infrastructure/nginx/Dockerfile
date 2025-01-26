FROM nginx:1.25.2

RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*

ARG UID=1000
RUN adduser deploy --disabled-password --home /home/deploy --uid $UID
