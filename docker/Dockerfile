ARG CORA_DOCKER_VERSION
FROM cora-docker-java:${CORA_DOCKER_VERSION}

ENV tokenLogoutURL setWhenDockerStarts

COPY /divacorafitnesse.jar /fitnesse/
COPY /FitNesseRoot /fitnesse/FitNesseRoot
COPY /plugins.properties /fitnesse/
COPY /password.txt /fitnesse/

WORKDIR /fitnesse

CMD java -classpath /fitnesse/divacorafitnesse.jar  -DsystemUnderTestUrl="http://diva:8080/diva/" -DappTokenVerifierUrl="http://apptokenverifier:8080/apptokenverifier/" -DidpLoginUrl="http://idplogin:8080/idplogin/" -DhttpListenerUrl="http://diva-fitnesse-httplistener:11111/" -DgatekeeperServerUrl="http://gatekeeper:8080/gatekeeperserver/" -DtokenLogoutURL=${tokenLogoutURL}  fitnesseMain.FitNesseMain -p 8090 -a /fitnesse/password.txt
 
#java -jar fitnesse-standalone.jar -p 8090 -o -a password.txt

#build with:
#maven build

#start on build server with:
#docker run --net=cora-test -p 8190:8090 --name fitnesse-test --link therest-test:therest --link apptokenverifier-test:apptokenverifier -d fitnesse

#start on external with:
#docker run --network=cora -p 8290:8090 --name fitnesse --link therest:therest -d fitnesse

