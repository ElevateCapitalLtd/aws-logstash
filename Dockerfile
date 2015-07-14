FROM logstash

RUN mkdir -p /etc/logstash/conf
ADD config /etc/logstash/conf

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

entrypoint ["/entrypoint.sh"]
