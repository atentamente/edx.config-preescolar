#!/bin/bash

rm -rf edx.config-preescolar

git clone https://github.com/lpm0073/edx.config-preescolar.git
chown edxapp -R edx.config-preescolar
chgrp edxapp -R edx.config-preescolar

cp /home/ubuntu/edx.config-preescolar/conf/lms.env.json /edx/app/edxapp/lms.env.json
cp /home/ubuntu/edx.config-preescolar/conf/lms.auth.json /edx/app/edxapp/lms.auth.json
cp /home/ubuntu/edx.config-preescolar/conf/cms.env.json /edx/app/edxapp/cms.env.json
cp /home/ubuntu/edx.config-preescolar/conf/cms.auth.json /edx/app/edxapp/cms.auth.json
cp /home/ubuntu/edx.config-preescolar/edx/etc/ecommerce.yml /edx/etc/ecommerce.yml

chmod 644 /edx/app/edxapp/*.env.json
chmod 755 /edx/app/edxapp/*.auth.json
