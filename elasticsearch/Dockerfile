FROM elasticsearch:1.7

RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head/1.x
RUN /usr/share/elasticsearch/bin/plugin -install lmenezes/elasticsearch-kopf/1.0
ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
