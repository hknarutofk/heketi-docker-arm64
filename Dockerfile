FROM centos:7

# LABEL maintainer=YeQiang <289632785@qq.com>

ADD heketi/heketi /usr/bin/heketi
ADD heketi/heketi-cli /usr/bin/heketi-cli
ADD heketi.json /etc/heketi/heketi.json
ADD heketi-client/* /usr/
ADD heketi-start.sh /usr/bin/heketi-start.sh

MAINTAINER YeQiang <289632785@qq.com> 
LABEL version=v10.2.0
VOLUME [/etc/heketi /var/lib/heketi] 
ENTRYPOINT ["/usr/bin/heketi-start.sh"]
EXPOSE 8080
