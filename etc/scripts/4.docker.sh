#!/bin/zsh
docker pull ukitomato/google-cloud-sdk && \
docker run -ti --name gcloud-config ukitomato/google-cloud-sdk auth login && \
docker pull ukitomato/latex
