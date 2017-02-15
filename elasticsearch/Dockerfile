FROM elasticsearch:1.7

RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head
RUN /usr/share/elasticsearch/bin/plugin install lmenezes/elasticsearch-kopf/2.0
RUN /usr/share/elasticsearch/bin/plugin install elasticsearch/elasticsearch-analysis-icu/2.7.0
RUN /usr/share/elasticsearch/bin/plugin install elasticsearch/elasticsearch-analysis-kuromoji/2.7.0
RUN /usr/share/elasticsearch/bin/plugin install elasticsearch/elasticsearch-analysis-smartcn/2.7.0

ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
