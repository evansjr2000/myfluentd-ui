#/bin/bash -x
export VERS="v0.4.1"
docker build -t fluentd-ui .
docker tag fluentd-ui evansjr/myfluentd-ui:${VERS}

docker push evansjr/myfluentd-ui:${VERS}
