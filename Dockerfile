FROM python:3.9-slim

LABEL maintainer="Stephen Newey <github@s-n.me>"

WORKDIR /usr/src/app

COPY /app/requirements.txt ./

RUN pip install -r requirements.txt

COPY /app/octopus_to_influxdb.py ./

ENTRYPOINT [ "python", "./octopus_to_influxdb.py" ]
