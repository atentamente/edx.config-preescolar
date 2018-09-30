#!/bin/bash

# update assets as edxapp user
sudo -H -u edxapp bash << EOF
source /edx/app/edxapp/edxapp_env
cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=aws
paver update_assets cms --settings=aws
EOF

# restart edx instances
sudo /edx/bin/supervisorctl restart lms
sudo /edx/bin/supervisorctl restart cms
/edx/bin/supervisorctl restart edxapp_worker:
