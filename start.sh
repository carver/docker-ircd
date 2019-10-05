#!/bin/bash

# starting the busybox-syslogd service directly doesn't work
# but we can start the daemon directly:
syslogd

service ngircd start
tail -f /var/log/messages
