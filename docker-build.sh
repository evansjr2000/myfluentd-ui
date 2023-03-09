#/bin/bash -x
docker build -t fluentd-ui .
docker tag fluentd-ui evansjr/myfluentd-ui:v0.1
docker push evansjr/myfluentd-ui:v0.1
