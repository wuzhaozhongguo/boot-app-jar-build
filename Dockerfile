FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD build/app.jar app.jar
ARG BUILD_EXPOSE=8080
ENV PARAM_JAVA_OPTS=""
ENV PARAM_JAVA_ARGS=""
EXPOSE ${BUILD_EXPOSE}
CMD java -Djava.security.egd=file:/dev/./urandom ${PARAM_JAVA_OPTS} -jar "/app.jar" ${PARAM_JAVA_ARGS}