# docker-kata
--------------------------------------
#### Steps
1. Run java web app (Spring Boot)
   1. Build artifact
   1. Build an image
   1. Inspect image via --entrypoint /bin/bash
      1. Run app from it
      1. Try to create a file
   1. Take notice why third-party dependencies are separated
   1. Take notice how to add user role (add more explanation to Dockerfile)
   1. Run the image from CLI
   1. Run the image via docker-compose
   1. Run & build the image via docker-compose
# 

----------------------------------------
# how to run into excisting container
# how to see logs and copy them
# how to inspect container
# how to connect to running container
# how to copy some files into running container
# find definitions of Dockerfile in the documentation 

## Run app
````
$ docker-compose down && docker-compose up --build
````

````
$ docker  run --rm -it --entrypoint /bin/bash docker-kata_hello-world-springboot
````