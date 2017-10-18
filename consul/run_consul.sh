#!/bin/bash

#docker run --rm --net=host -v ~/run/dockers/consul/consul_config/test-distribution-service.json:/consul/config/service.json \
docker run --rm --name consul-server --net=host -d -v ~/run/dockers/consul/consul_config/test-distribution-service.json:/consul/config/service.json \
	consul agent -dev -server -node consul-server
#	consul agent -dev -server -node consul-server -bind=10.40.110.166 -client=10.40.110.166
#	consul agent -dev -server -node consul-server -bind=10.40.100.62 -client=10.40.100.62

#docker run --rm --name consul-agent -d -v ~/run/dockers/consul/consul_config/test-distribution-service.json:/consul/config/service.json \
#	consul agent -dev -node consul-agent #-bind=10.40.110.166 -client=10.40.110.166
