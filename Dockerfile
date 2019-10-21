FROM micovery/apigee-drupal8-dev-portal:8.x-dev

USER root
RUN cd /drupal/project && \
    sudo -u drupal composer config repositories.repo-name vcs git@github.com:micovery/apigee-graphql-drupal-module.git && \
    sudo -u drupal composer require micovery/apigee-graphql-drupal-module:dev-master && \
    sudo -u drupal composer clear-cache && \
    \
    service mysql restart && \
    cd /drupal/project && \
    drush en apigee_drupal8_graphql

USER drupal