FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.3
LABEL maintainer="Mark Krijgsman <mark.krijgsman@luminis.eu>"

COPY arirang-analyzer-es-plugin-6.1.3.zip /usr/share/elasticsearch/

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///usr/share/elasticsearch/arirang-analyzer-es-plugin-6.1.3.zip
