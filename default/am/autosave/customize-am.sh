#!/usr/bin/env bash

# This script and a supporting jar file should be placed in the
# configuration repository at the path defined by the global.configPath.am
# property in the custom.yaml file.

echo "Customizing the AM web application"
echo ""

echo "Available environment variables:"
echo ""
env
echo ""

# Copy the custom nodes jars file that is in the same directory as this script to the
# webapps/openam/WEB-INF/lib directory
cp /git/config/${CONFIG_PATH}/*.jar ${CATALINA_HOME}/webapps/openam/WEB-INF/lib

echo "Finished customizing the AM web application"
