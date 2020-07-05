FROM ubuntu:18.04
RUN apt-get -y update \
&& apt-get install -y wget
RUN wget https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_linux-x64_bin.tar.gz
RUN mkdir /usr/lib/jvm/
RUN tar -zxvf openjdk-14.0.1_linux-x64_bin.tar.gz -C /usr/lib/jvm/
ENV JAVA_HOME /usr/lib/jvm/jdk-14.0.1/
ENV PATH ${PATH}:${JAVA_HOME}/bin
