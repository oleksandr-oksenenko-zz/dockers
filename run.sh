#!/bin/bash

#docker run --net=host --privileged -d --tmpfs /tmp/:rw,size=128m,nodev,nosuid,mode=1777 --name elasticsearch crew4ok/elasticsearch &
docker run --net=host --privileged -d --name elasticsearch crew4ok/elasticsearch &
#docker run --net=host --privileged -d --tmpfs /tmp/:rw,size=128m,nodev,nosuid,mode=1777 --name elasticsearch crew4ok/elasticsearch:2.4

#docker run --net=host --privileged -d --tmpfs /data/:rw,size=128m,nodev,nosuid,mode=1777 --name mongo mongo:2.6 &
#docker run --net=host --privileged -d --name mongo crew4ok/mongo &
#docker run --net=host --privileged -d --name mongo crew4ok/mongo &
#docker run --net=host --privileged -d --tmpfs /data/db:rw,size=128m,nodev,nosuid,mode=1777 --name mongo crew4ok/mongo &
docker run --net=host --privileged -d --tmpfs /data/:rw,size=128m,nodev,nosuid,mode=1777 --name mongo crew4ok/mongo --storageEngine mmapv1 &
docker run --net=host --privileged -d --name redis crew4ok/redis &
docker run --net=host --privileged -d --name rabbitmq crew4ok/rabbitmq &
docker run --net=host --privileged -d --name zookeeper crew4ok/zookeeper &

docker run --net=host --privileged -d --name couchbase couchbase &

wait
