FROM ubuntu:14.04
MAINTAINER filippobosi

RUN apt-get update
RUN echo 'deb http://dl.ubnt.com/mfi/distros/deb/ubuntu ubuntu ubiquiti' >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50
RUN apt-get update
RUN apt-get install -y mfi-beta
RUN apt-get clean
EXPOSE 6443 6080



CMD ["/usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java", "-Xmx1024M", "-jar", "/usr/lib/mfi/lib/ace.jar", "start"]
