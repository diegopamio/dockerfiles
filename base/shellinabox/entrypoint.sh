#! /bin/bash

set -e

service=$SHELL_IN_A_BOX_SERVICE

if [ -z "$service" ]; then
  service="/:user:users:/home/user:/bin/bash"
fi

sudo /opt/shellinabox/shellinaboxd -b --no-beep --service $service

exec "$@"
