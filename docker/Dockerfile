ARG CORA_DOCKER_VERSION
FROM cora-docker-java:${CORA_DOCKER_VERSION}

ENV tokenLogoutURL setWhenDockerStarts

WORKDIR /fitnesse

COPY /divacorafitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]