#!/bin/bash -x

docker pull fluent/fluentd:edge-debian

if [ ! -d ./tmp ]; then
    mkdir -p tmp
fi


cat <<EOF > tmp/fluentd.conf
# $(pwd)/tmp/fluentd.conf

<source>
  @type http
  port 9880
  bind 0.0.0.0
</source>

<match **>
  @type stdout
</match>
EOF

docker run -p 9880:9880 -v $(pwd)/tmp:/fluentd/etc fluent/fluentd:edge-debian -c /fluentd/etc/fluentd.conf
