# java installation
FROM ubuntu:18.04
RUN apt-get -y update \
&& apt-get install -y wget \
&& apt-get install -y git \
&& apt-get install -y sudo
RUN wget https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_linux-x64_bin.tar.gz
RUN mkdir /usr/lib/jvm/
RUN tar -zxvf openjdk-14.0.1_linux-x64_bin.tar.gz -C /usr/lib/jvm/
ENV JAVA_HOME /usr/lib/jvm/jdk-14.0.1/
ENV PATH ${PATH}:${JAVA_HOME}/bin
# maven installation
RUN wget http://apachemirror.wuchna.com/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar xf /apache-maven-*.tar.gz -C /opt
RUN ln -s /opt/apache-maven-3.6.3 /opt/maven
ENV M2_HOME /opt/maven
ENV MAVEN_HOME /opt/maven
ENV PATH ${M2_HOME}/bin:${PATH}
# node installation
RUN wget https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.gz
RUN sudo tar -xf node-v6.9.2-linux-x64.tar.gz --directory /usr/local --strip-components 1
