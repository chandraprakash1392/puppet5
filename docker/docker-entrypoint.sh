#!/bin/bash

chown -R puppet:puppet /opt/puppetlabs/server/data/puppetserver/
chown -R puppet:puppet /etc/puppetlabs

chmod 755 /lib/systemd/system/puppetserver.service

. /opt/puppetlabs/server/apps/puppetserver/bin/puppetserver foreground
