# docker-kata
--------------------------------------
#### Steps
1. Run Spring Boot app
   1. Compile code
   1. Run image via docker-compose
   1. Inspect image via --entrypoint /bin/bash




----------------------------------------

## Run app
````
$ docker-compose down && docker-compose up --build
````

````
$ docker  run --rm -it --entrypoint /bin/bash docker-kata_hello-world-springboot
````