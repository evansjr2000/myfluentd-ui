#!/bin/bash -x

export VERS="v0.3-test"


# docker build -t fluent/fluentd-ui:1.0.0 .

docker run --net=host evansjr/myfluentd-ui:${VERS}



