FROM rkrahl/opensuse:15.4

RUN zypper --non-interactive install \
	bind

RUN mkdir -p /run/named && \
    chown named:named /run/named

ENV NAMED_ARGS ""

CMD /usr/sbin/named $NAMED_ARGS -u named

EXPOSE 53/tcp
EXPOSE 53/udp
