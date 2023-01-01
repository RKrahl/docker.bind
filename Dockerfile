FROM rkrahl/opensuse:15.4

RUN zypper --non-interactive install \
	bind

CMD ["/usr/sbin/named", "-u", "named"]

EXPOSE 53/tcp
EXPOSE 53/udp
