FROM fabric8/java-alpine-openjdk8-jdk:1.3.1
MAINTAINER amitthk

ENV api_name springbtang
ENV api_version 0.0.1-SNAPSHOT
ENV jar_location ./build/libs

RUN echo "==> Running:  ${api_name}-${api_version}"
ADD ${jar_location}/${api_name}-${api_version}.jar /deployments/${api_name}.jar
CMD chmod 775 /deployments/${api_name}.jar && java -jar -Dspring.profiles.active=dev /deployments/${api_name}.jar

EXPOSE 8080
