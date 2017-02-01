FROM python:2.7-alpine

MAINTAINER Venkatv venkatesan.v@gmail.com

RUN pip install moto \
    && pip install flask

COPY endpoints.json /opt/moto/
VOLUME ["/opt/moto"]

# Default port that moto listens on.
EXPOSE 25000

ENTRYPOINT ["moto_server"]
CMD ["--help"]

