ARG BUILD_FROM="homeassistant/armv7-base-python:latest"
FROM $BUILD_FROM

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /data
CMD ["/run.sh"]
