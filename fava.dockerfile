# syntax=docker/dockerfile:1
FROM python:3.13

COPY <<EOF /tmp/requirements.txt
beancount==2.3.6
fava==1.29
EOF

RUN pip3 install -r /tmp/requirements.txt

EXPOSE 5000
ENV FAVA_HOST "0.0.0.0"

WORKDIR /finance

ENTRYPOINT ["fava"]