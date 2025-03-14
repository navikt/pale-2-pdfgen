#!/bin/bash

CURRENT_PATH="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"

docker pull europe-north1-docker.pkg.dev/nais-management-233d/pdfgen/pdfgen:2.0.71
docker run \
        -v $CURRENT_PATH/templates:/app/templates \
        -v $CURRENT_PATH/fonts:/app/fonts \
        -v $CURRENT_PATH/data:/app/data \
        -v $CURRENT_PATH/resources:/app/resources \
        -p 8080:8080 \
        -e DISABLE_PDF_GET=false \
        -e JDK_JAVA_OPTIONS \
        -e DEV_MODE=true \
        -it \
        --rm \
        europe-north1-docker.pkg.dev/nais-management-233d/pdfgen/pdfgen:2.0.71
