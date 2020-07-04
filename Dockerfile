FROM ubuntu
RUN https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_linux-x64_bin.tar.gz
RUN tar -zxvf openjdk-14.0.1_linux-x64_bin.tar.gz
RUN sudo mkdir -p /usr/lib/jvm/jdk-14.0.1/
RUN sudo mv jdk-14.0.1 /usr/lib/jvm/jdk-14.0.1/
ENV JAVA_HOME /usr/lib/jvm/jdk-14.0.1/
ENV JDK_HOME /usr/lib/jvm/jdk-14.0.1/
CMD ["java", "--version"]
