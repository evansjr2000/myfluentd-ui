#/bin/bash -x
export VERS="v0.4"
docker build -t fluentd-ui .
docker tag fluentd-ui evansjr/myfluentd-ui:${VERS}

docker push evansjr/myfluentd-ui:${VERS}
