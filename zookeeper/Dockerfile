FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y zookeeper zookeeperd

EXPOSE 2181 2888 3888
ENV PATH /usr/share/zookeeper/bin/:$PATH
CMD ["zkServer.sh", "start-foreground"]
