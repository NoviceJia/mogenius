#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fab1396d-d341-4604-9855-49fe624f0a7c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

