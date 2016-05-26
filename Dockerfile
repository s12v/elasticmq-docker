FROM java:8-jre

EXPOSE 9324

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.9.3.jar /elasticmq-server-0.9.3.jar
COPY elasticmq.conf /config/elasticmq.conf

CMD ["java", "-Djava.net.preferIPv4Stack=true", "-Dconfig.file=/config/elasticmq.conf", "-jar", "/elasticmq-server-0.9.3.jar"]
