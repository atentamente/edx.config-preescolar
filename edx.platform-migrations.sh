#!/bin/sh
# McDaniel
# April 2018
#
# Usage:     To run database migrations for LMS & CMS
#            Native Open edX Ubuntu 16.04 64 bit Installation
#
# Reference: https://openedx.atlassian.net/wiki/spaces/OpenOPS/pages/60227913/Managing+OpenEdX+Tips+and+Tricks

sudo -H -u edxapp -s bash << EOF
cd ~
source /edx/app/edxapp/edxapp_env

python /edx/app/edxapp/edx-platform/manage.py lms makemigrations --settings=aws
python /edx/app/edxapp/edx-platform/manage.py lms migrate --settings=aws

python /edx/app/edxapp/edx-platform/manage.py cms makemigrations --settings=aws
python /edx/app/edxapp/edx-platform/manage.py cms migrate --settings=aws
EOF

# edX Notes migrations
#export EDXNOTES_CONFIG_ROOT=/edx/etc/
#export DB_MIGRATION_USER=
#export DB_MIGRATION_PASS=
#/edx/bin/python.edx_notes_api /edx/bin/manage.edx_notes_api migrate --settings="notesserver.settings.yaml_config"
