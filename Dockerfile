FROM jenkins:latest

USER root

# get maven 3.3.9
RUN wget --no-verbose -O /tmp/$MAVEN_NAME.tar.gz http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz \
    # install maven
    && mkdir /opt/maven \
    && tar -zxf /tmp/$MAVEN_NAME.tar.gz -C /opt/maven --strip-components=1 \
    && ln -s /opt/maven/bin/mvn /usr/local/bin \
    && rm -f /tmp/$MAVEN_NAME.tar.gz

USER ${user}
