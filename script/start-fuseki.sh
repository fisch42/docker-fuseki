#!/bin/bash
FUSEKI_HOME=/opt/fuseki/
OPTS=${OPTS:-"--update --loc=/data /ds"}
/opt/fuseki/fuseki-server $OPTS
