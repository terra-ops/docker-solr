FROM makuk66/docker-solr

MAINTAINER Jon Pugh <jon@thinkdrop.net>

# Create a Core
RUN mkdir /opt/solr/server/solr/core/conf -p
RUN chown solr:solr /opt/solr/server/solr/core -R

COPY core.properties /opt/solr/server/solr/core/core.properties

VOLUME ["/opt/solr/server/solr/core/conf"]
