ARG CORA_DOCKER_VERSION
FROM cora-docker-java:${CORA_DOCKER_VERSION}

ENV tokenLogoutURL setWhenDockerStarts

COPY /divacorafitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/

WORKDIR /fitnesse

CMD java -classpath /fitnesse/divacorafitnesse.jar  -DsystemUnderTestUrl="http://diva:8080/diva/" -DappTokenVerifierUrl="http://login:8080/login/" -DidpLoginUrl="http://idplogin:8080/idplogin/" -DhttpListenerUrl="http://diva-fitnesse-httplistener:11111/" -DgatekeeperServerUrl="http://gatekeeper:8080/gatekeeperserver/" fitnesseMain.FitNesseMain -p 8090 -a /fitnesse/password.txt
 