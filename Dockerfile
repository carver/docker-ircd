FROM ubuntu

MAINTAINER Jason Carver <ut96caarrs@snkmail.com>

# RUN apt-get update && apt-get install apt-transport-https

# RUN echo "deb https://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list

RUN apt-get update && \
  apt-get install -y apt-transport-https busybox-syslogd ngircd

# expose IRC ports
EXPOSE :443
EXPOSE :6664
EXPOSE :6667

add start.sh /start.sh
add ngircd.conf /etc/ngircd/ngircd.conf
add ngircd.motd /etc/ngircd/ngircd.motd

CMD ["/start.sh"]
