FROM sebp/elk

#ENV ES_HOME /opt/elasticsearch
#WORKDIR ${ES_HOME}
#RUN CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin install ingest-geoip


WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-codec-sflow
RUN gosu logstash bin/logstash-plugin install logstash-codec-netflow

#ADD /path/to/your-30-output.conf /etc/logstash/conf.d/30-output.conf
#ADD /path/to/elastiflow /etc/logstash/elastiflow


WORKDIR ${KIBANA_HOME}
#RUN gosu kibana bin/kibana-plugin install elastic/sense


