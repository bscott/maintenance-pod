FROM ubuntu:20.04 
ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y \ 
gnupg \ 
python-yaml \ 
python-jinja2 \ 
python-pycurl 
RUN apt-get update && apt-get install -y \ 
curl \ 
libmcrypt-dev \ 
apt-transport-https \ 
apt-utils \ 
mysql-client 
RUN apt-get update && \ 
apt-get install -y \ 
python3 \ 
python3-pip \ 
python3-setuptools \ 
groff \ 
less \ 
&& pip3 install --upgrade pip \ 
&& apt-get clean 
RUN pip3 --no-cache-dir install --upgrade awscli 
RUN apt-get install -y \ 
postgresql-client \ 
s3cmd \ 
wget \ 
redis-tools \ 
screen \ 
tmux \ 
git \ 
iputils-ping \ 
telnet \ 
vim \ 
nano 
RUN apt-get update 
RUN apt-get install apache2-utils -y  
CMD ["sh", "-c", "tail -f /dev/null"] 
WORKDIR /home
