FROM python:3.6-alpine

RUN pip install --upgrade pip \
    && pip install j2cli==0.3.1.post0 j2cli[yaml] \
    && mkdir -p /data

WORKDIR /data
ENTRYPOINT ["j2"]
CMD ["--help"]
