FROM fabric8/java-alpine-openjdk8-jdk:1.3.1
MAINTAINER amitthk

ENV api_name springbtang-0.0.1-SNAPSHOT.jar
ENV jar_location ./build/libs

RUN echo "==> Running: " ${api_name}
ADD ${jar_location}/${api_name}.jar /var/www/${api_name}/
CMD java -jar -Dspring.profiles.active=dev /var/www/${api_name}.jar

EXPOSE 8080
