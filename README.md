# docker-kata
--------------------------------------
#### Steps
1. Documentation
   1. Dockerfile reference https://docs.docker.com/engine/reference/builder/
   1. Compose file version 3 reference https://docs.docker.com/compose/compose-file/compose-file-v3/
   1. docker CLI https://docs.docker.com/engine/reference/run/
   1. docker-compose CLI https://docs.docker.com/compose/reference/
   1. Best practices for writing Dockerfiles https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
1. Run java web app (Spring Boot)
   1. Build artifact `$ mvn clean install`
   1. Build image via `$ docker build -t docker-kata:latest .`
   1. Run & build the image via docker-compose `$ docker-compose down && docker-compose up --build`
   1. Inspect image via --entrypoint /bin/bash `$ docker run --rm -it --entrypoint /bin/bash docker-kata_hello-world-springboot:latest`
      1. Run app from it `$ java -cp "java-lib/*:/hello-world-springboot.jar" com.kren.hello.world.MainApp`
      1. Try to create a file
   1. Take notice why third-party dependencies are separated
   1. Take notice how to add user role
      1. See more details in https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user
1. Exploring container
   1. Connect to a runing container `$ docker container exec -it bold_golick bash`
   1. Show running PID `$ ps -elf`
   1. Save container logs into file `$ docker logs bold_golick > log_file.txt`
   1. Following logs in real time `$ docker logs -f bold_golick`
   1. Inspect image `$ docker image inspect docker-kata_hello-world-springboot:latest`
   1. Inspect running container `$ docker container inspect suspicious_chaum` and `$ docker container diff suspicious_chaum`
   1. Show recourses used by container `$ docker stats bold_golick`
   1. How to copy some files from|into running container `$ docker cp suspicious_chaum:hello-world-springboot.jar ./` and `$ docker cp ./docker-compose.yml suspicious_chaum:/`
1. Running docker containers indefinitely
   1. See doc https://www.baeldung.com/ops/running-docker-containers-indefinitely
   1. In the background `$ docker run --entrypoint /bin/bash docker-kata_hello-world-springboot:latest`
   1. Via docker-compose `$ docker-compose -f docker-compose-indefinite-run.yml down && docker-compose -f docker-compose-indefinite-run.yml up`
   1. Connect to running image `$ docker container exec -it docker-kata_java-image_1 bash`
1. Advanced run java web app (Spring Boot) [FOR CONSIDERATION]
   1. Create layered jar from Spring Boot fat jar
   1. Set up remove debug configuration [might multi-stage be used here?]
   1. Set up hot redeployment [might multi-stage be used here?]
   1. Set up container with possiblility of running tests [might multi-stage be used here?]
   1. Add and show importance of exec command
   1. Connect to jvm remotely to expose and investigate metrics
1. Adding persistence storage  [FOR CONSIDERATION]
   1. Add DB container (Postgres SQL)
   1. Set up storing and recovering from back ups
1. Control of order running containers [FOR CONSIDERATION]
   1. Set up a case when java app should be shure that DB container is running
1. Adding monitoring tools [FOR CONSIDERATION]
   1. Set up solution for ELK
   1. Set up solution for Graphana metrics
1. [Pass Environment Variables From the Host Machine to your Docker Container](https://vsupalov.com/docker-environment-variables-from-host/)

  
# 