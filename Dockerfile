FROM bibinwilson/jenkins-slave

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables

RUN curl -sSL https://get.docker.com/ | sh

ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

VOLUME /var/lib/docker
CMD ["wrapdocker"]