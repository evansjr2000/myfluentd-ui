#!/bin/bash -x

export VERS="v0.3-test"


# docker build -t fluent/fluentd-ui:1.0.0 .

# docker run --net=host evansjr/myfluentd-ui:${VERS}
docker run -it --name myfluentd-ui  -p 9292:9292 -v /var/log:/var/log2 -v `pwd`/tmp/fluentd:/etc/fluentd evansjr/myfluentd-ui:${VERS} /bin/bash



