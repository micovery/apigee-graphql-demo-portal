## Apigee GraphQL Demo Dev Portal


![](images/playground.png?raw=true "Apigee Developer Portal GraphQL Playground")

### Description

This repo contains a Docker image that demos the [Apigee Drupal8 Kickstart](https://www.drupal.org/project/apigee_devportal_kickstart) with the GraphQL Playground module already installed.

The docker image is meant to be used for development or demonstration purposes only.

### How it works
The docker image extends the base [apigee-drupal8-dev-potal](https://github.com/micovery/apigee-drupal8-dev-portal) image.

It adds and installs the [apigee-graphql-drupal-module](https://github.com/micovery/apigee-graphql-drupal-module) on top.
   


### How to deploy it

In order to use the docker image, run the following command:

```bash
 docker run --rm -it \
            --publish 8080:80 \
            --name graphql-dev-portal \
            micovery/apigee-graphql-demo-portal:latest
```

Then, point your browser to http://localhost:8080

The default administrator credentials are:

```
username: admin@localhost
password: admin
``` 

### How to use it

First, open the module configuration from the Drupal admin configuration page. There, you are going
to find the settings for the module.

In there you will find two main sections:
 
 1. **"GraphQL Playground"**
     
     This is where you configure theme, access, and parameters for the playground application itself. 
     For example, you can select between between light and dark theme. Also, you can set the default value
     for the GraphQL endpoint URL.
  
 2. **"OAuth Settings"**
     
     This is where you configure the OAuth protocol settings such as token endpoint, authorization endpoint,
     and redirect URL.



### Build Prerequisites

  * bash (Linux shell)
  * [Docker (18 or newer)](https://www.docker.com/)
  
   
## Not Google Product Clause

This is not an officially supported Google product.
