ARG BUILD_FROM="ryanjhkruger/armv7-base-python:3.4"
FROM $BUILD_FROM

# Copy data
COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /data
CMD ["/run.sh"]
