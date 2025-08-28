ARG CORA_DOCKER_VERSION
FROM cora-docker-java:${CORA_DOCKER_VERSION}

WORKDIR /fitnesse

COPY divacorafitnesse.jar  .
COPY plugins.properties    .
COPY password.txt          .
COPY FitNesseRoot          ./FitNesseRoot
COPY entrypoint.sh         .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]