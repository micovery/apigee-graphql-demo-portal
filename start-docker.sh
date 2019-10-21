#!/usr/bin/env bash

 docker run --rm -it \
            --publish 8080:80 \
            --name graphql-dev-portal \
            micovery/apigee-graphql-demo-portal:latest