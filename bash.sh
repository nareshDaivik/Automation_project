#!/bin/bash

echo "this is an script for bash file"
timestamp=$(date '+%d%m%Y-%H%M%S')

tar -cvf Naresh-httpd-log-$timestamp.tar /var/log/apache2

