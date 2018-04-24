sudo rm -r /var/lib/rabbitmq/mnesia/

#sudo rabbitmqctl list_users
#sudo /edx/bin/supervisorctl status
#sudo service rabbitmq-server restart

sudo rabbitmqctl add_user celery AMKUx3avVLNg3sg9kWwuixDlNOypjeJzAhd
sudo rabbitmqctl add_user admin UyjB5FPt6A1NDbdMVL1v6vM0oVhA9aZcWYN
sudo rabbitmqctl add_user edx CL2boTFcmhl1NHV8Q5k4RtIui9yUjmQZjNQ
sudo rabbitmqctl set_permissions celery ".*" ".*" ".*"
sudo rabbitmqctl set_permissions admin ".*" ".*" ".*"
sudo rabbitmqctl set_permissions edx ".*" ".*" ".*"

