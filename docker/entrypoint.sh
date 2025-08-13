#!/bin/bash

: "${BASE_URL:-http://diva:8080/diva/}"
: "${LOGIN_URL:-http://login:8080/login/}"
: "${IDP_LOGIN_URL:-http://idplogin:8080/idplogin/}"
: "${GATEKEEPER_SERVER_URL:-http://gatekeeper:8080/gatekeeperserver/}"

java \
  -classpath /fitnesse/divacorafitnesse.jar \
  -DsystemUnderTestUrl="$BASE_URL" \
  -DappTokenVerifierUrl="$LOGIN_URL" \
  -DidpLoginUrl="$IDP_LOGIN_URL" \
  -DgatekeeperServerUrl="$GATEKEEPER_SERVER_URL" \
  fitnesseMain.FitNesseMain \
  -p 8090 \
  -a /fitnesse/password.txt