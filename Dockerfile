FROM ubuntu:trusty

RUN apt-get update && apt-get install pgpool2 postgresql-client-9.3 wget unzip psmisc -y
RUN wget -P /tmp/ https://releases.hashicorp.com/consul-template/0.14.0/consul-template_0.14.0_linux_amd64.zip
RUN unzip /tmp/consul-template_0.14.0_linux_amd64.zip -d /usr/local/bin/

COPY templates/pgpool.conf.template /etc/pgpool2/
COPY templates/pool_hba.conf /etc/pgpool2/
COPY run.sh /usr/local/bin

RUN chmod +x /usr/local/bin/run.sh

EXPOSE 9999

CMD /usr/local/bin/run.sh
