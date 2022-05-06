# docker-kata
--------------------------------------
#### Steps
1. Documentation
   1. Dockerfile reference https://docs.docker.com/engine/reference/builder/#onbuild
   1. Compose file version 3 reference https://docs.docker.com/compose/compose-file/compose-file-v3/
   1. docker CLI https://docs.docker.com/engine/reference/run/
   1. docker-compose CLI https://docs.docker.com/compose/reference/
   1. Best practices for writing Dockerfiles https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
1. Run java web app (Spring Boot)
   1. Build artifact `$ mvn clean install`
   1. Build image via `docker build -t docker-kata:latest .`
   1. Run & build the image via docker-compose `$ docker-compose down && docker-compose up --build`
   1. Inspect image via --entrypoint /bin/bash `$ docker  run --rm -it --entrypoint /bin/bash docker-kata_hello-world-springboot:latest`
      1. Run app from it `$ java -cp "java-lib/*:/hello-world-springboot.jar" com.kren.hello.world.MainApp`
      1. Try to create a file
   1. Take notice why third-party dependencies are separated
   1. Take notice how to add user role
      1. See more details in https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user
1. Exploring container [FOR CONSIDERATION]
   1. Connect to a runing container
   1. Save container logs into file
   1. Inspect image
   1. Inspect running container
   1. How to copy some files into running container  
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
  
# 