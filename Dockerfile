FROM micovery/apigee-drupal8-dev-portal:8.x-dev

RUN cd /drupal/project && \
      composer config repositories.repo-name vcs git@github.com:micovery/apigee-graphql-drupal-module.git && \
      composer require micovery/apigee-graphql-drupal-module:dev-master

USER root
RUN service mysql start && \
    cd /drupal/project && \
    drush en apigee_drupal8_graphql && \
    drush en devel

USER drupal