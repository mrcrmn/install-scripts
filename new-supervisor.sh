#!/bin/bash

# Variables
SUPERVISOR_CONF_DIR='/etc/supervisor/conf.d'

# Create nginx config file
sudo cat > $SUPERVISOR_CONF_DIR/$1.conf <<EOF
[program:$1]
process_name=%(program_name)s_%(process_num)02d
command=php /var/www/$1/artisan queue:work
autostart=true
autorestart=true
user=$USER
numprocs=8
redirect_stderr=true
stdout_logfile=/home/forge/app.com/worker.log
EOF

echo "Created configuration file $SUPERVISOR_CONF_DIR/$1.conf"