#!/bin/bash

echo "this is an script for bash file";
CHK_1="Naresh-http-log"
echo $CHK_1
var2=".tar"
timestamp=$(date '+%d%m%Y-%H%M%S')
filename=${CHK_1}$timestamp${var2}
echo $timestamp
echo "the filename is $filename"

tar -cvf "./$filename" "/var/log/apache2"

aws s3 cp "./$filename" "s3://upgrad-naresh"
size=$("wc --bytes" < "./$filepath")
echo "size of file $size"

rm "./$filename"

