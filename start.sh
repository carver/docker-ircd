#!/bin/bash

service ngircd start
tail -f /var/log/syslog
