#!/usr/bin/env bash

echo "build Started ...."

docker login default-route-openshift-image-registry.apps.demo.ibmdte.net -u $(oc whoami) -p $(oc whoami -t)
docker build -t wcare-ns/wcareweb:latest .
docker tag wcare-ns/wcareweb:latest  default-route-openshift-image-registry.apps.demo.ibmdte.net/wcare-ns/wcareweb:latest
docker push  default-route-openshift-image-registry.apps.demo.ibmdte.net/wcare-ns/wcareweb:latest


echo "build completed ...."
