#!/bin/bash

echo "this is an script for bash file"
timestamp=$(date '+%d%m%Y-%H%M%S')
filename = "Naresh-http-log-"+$timestamp+".tar"

echo "location is ",$filename

tar -cvf /home/ubuntu/$filename /var/log/apache2

cd..

aws s3 cp /home/ubuntu/$filename s3://upgrad-naresh

#rm $filename

