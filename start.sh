#!/bin/sh

env

set -x

if [ -n "$ICECAST_SOURCE_PASSWORD" ]; then
    sed -i "s/<source-password>[^<]*<\/source-password>/<source-password>$ICECAST_SOURCE_PASSWORD<\/source-password>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_RELAY_PASSWORD" ]; then
    sed -i "s/<relay-password>[^<]*<\/relay-password>/<relay-password>$ICECAST_RELAY_PASSWORD<\/relay-password>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_ADMIN_PASSWORD" ]; then
    sed -i "s/<admin-password>[^<]*<\/admin-password>/<admin-password>$ICECAST_ADMIN_PASSWORD<\/admin-password>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_PASSWORD" ]; then
    sed -i "s/<password>[^<]*<\/password>/<password>$ICECAST_PASSWORD<\/password>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_PORT" ]; then
    sed -i "s/<port>8000<\/port>/<port>$ICECAST_PORT<\/port>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_ADMIN" ]; then
    sed -i "s/<admin>[^<]*<\/admin>/<admin>$ICECAST_ADMIN<\/admin>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_LOCATION" ]; then
    sed -i "s/<location>[^<]*<\/location>/<location>$ICECAST_LOCATION<\/location>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_BURST" ]; then
    sed -i "s/<burst-on-connect>[^<]*<\/burst-on-connect>/<burst-on-connect>$ICECAST_BURST<\/burst-on-connect>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_BURST_SIZE" ]; then
    sed -i "s/<burst-size>[^<]*<\/burst-size>/<burst-size>$ICECAST_BURST_SIZE<\/burst-size>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_HOSTNAME" ]; then
    sed -i "s/<hostname>[^<]*<\/hostname>/<hostname>$ICECAST_HOSTNAME<\/hostname>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_MASTER_SERVER" ]; then
    sed -i "s/<master-server>[^<]*<\/master-server>/<master-server>$ICECAST_MASTER_SERVER<\/master-server>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_MASTER_SERVER_PORT" ]; then
    sed -i "s/<master-server-port>[^<]*<\/master-server-port>/<master-server-port>$ICECAST_MASTER_SERVER_PORT<\/master-server-port>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_MASTER_PASSWORD" ]; then
    sed -i "s/<master-password>[^<]*<\/master-password>/<master-password>$ICECAST_MASTER_PASSWORD<\/master-password>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_RELAY_ON_DEMAND" ]; then
    sed -i "s/<relays-on-demand>[^<]*<\relays-on-demand>/<relays-on-demand>$ICECAST_RELAY_ON_DEMAND<\/relays-on-demand>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_CLIENT_LIMIT" ]; then
    sed -i "s/<clients>[^<]*<\/clients>/<clients>$ICECAST_CLIENT_LIMIT<\/clients>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_SOURCE_LIMIT" ]; then
    sed -i "s/<sources>[^<]*<\/sources>/<sources>$ICECAST_SOURCE_LIMIT<\/sources>/g" /etc/icecast2/icecast.xml
fi

if [ -n "$ICECAST_QUE_SIZE" ]; then
    sed -i "s/<queue-size>[^<]*<\/queue-size>/<queue-size>$ICECAST_QUE_SIZE<\/queue-size>/g" /etc/icecast2/icecast.xml
fi

#cat /etc/icecast2/icecast.xml

set -e

sudo -Eu icecast2 icecast2 -n -c /etc/icecast2/icecast.xml
