#!/bin/bash

export BRANCH_MAGENTO='staging'
export BRANCH_ART='staging'

export USER='artspace'
export ENV='local'

export LOCAL_FOLDER_SHARE='/media/sf_artspace'
export LOCAL_FOLDER_ART='artspace'
export LOCAL_FOLDER_MAGENTO='artfony'

export MYSQL_USER='artspace'
export MYSQL_PASS='4rt$p4c3'

export DOMAIN_ART='local.artspace.com'
export DOMAIN_MAGENTO='localstore.artspace.com'
export DOMAIN_ADMIN='local.artspace.com'

export DB_ART='local_art'
export DB_HOST_ART='localhost'
export DB_MAGENTO='local_magento'
export DB_HOST_MAGENTO='localhost'

export FOLDER_ART='/var/www/django'
export FOLDER_MAGENTO='/var/www/php'

export WSGI_ART='wsgi-local.py'
export SETTINGS_ART='settings_local'

export FOLDER_LOGS='/var/www/logs'
export LOAD_NEW_DB=false
export LOAD_SOLR_SETTINGS=false
export UPDATE_INDEX=false
export MEMCACHE_ON=false
export RUN_MIGRATIONS=true
export RUN_ASSETS=false
export RUN_SITEMAP=false
export RUN_REQS=false
export DJANGO_DEBUG=false