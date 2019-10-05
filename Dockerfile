FROM ubuntu:19.04

MAINTAINER Jason Carver <ut96caarrs@snkmail.com>

RUN apt-get update && \
  apt-get install -y apt-utils # install apt-utils first or apt will complain

RUN apt-get install -y apt-transport-https busybox-syslogd=1:1.27.2-2ubuntu7 ngircd=25-2

# expose IRC ports
EXPOSE :443
EXPOSE :6664
EXPOSE :6667

add start.sh /start.sh
add ngircd.conf /etc/ngircd/ngircd.conf
add ngircd.motd /etc/ngircd/ngircd.motd

CMD ["/start.sh"]
