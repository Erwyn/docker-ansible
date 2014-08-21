FROM ubuntu

MAINTAINER Martin GOYOT <martin@piwany.com>

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y python-pip
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible

RUN ansible-galaxy install angstwad.docker\_ubuntu
RUN pip install pyrax
RUN pip install --upgrade six

ADD run.sh /run.sh
RUN chmod u+x /run.sh

CMD ["./run.sh"]
