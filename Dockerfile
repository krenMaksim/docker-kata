# syntax=docker/dockerfile:1

FROM openjdk:11

RUN groupadd -r spring && useradd --no-log-init -r -g spring docker-kata

USER docker-kata

EXPOSE 8080

COPY /target/lib/compile/* /java-lib/
COPY /target/hello-world-springboot-*.jar /hello-world-springboot.jar

ENTRYPOINT exec java \
                --class-path java-lib/*:/hello-world-springboot.jar \
                -Djava.security.egd=file:/dev/./urandom \
                -Xms125m -Xmx256m \
                com.kren.hello.world.MainApp
# CMD ["java", "--class-path", "java-lib/*:/hello-world-springboot.jar", "-Djava.security.egd=file:/dev/./urandom", "-Xms125m", "-Xmx256m", "com.kren.hello.world.MainApp"]
