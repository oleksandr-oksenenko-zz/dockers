FROM rabbitmq:3.6

ENV PATH /usr/lib/rabbitmq/bin:$PATH

RUN rabbitmq-plugins enable rabbitmq_management

RUN apt-get update
RUN apt-get install curl -y

EXPOSE 15672 5671 5672
