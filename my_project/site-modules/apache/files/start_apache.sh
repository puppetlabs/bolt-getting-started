#!/usr/bin/env bash

i=`ps -eaf | grep -i apache | grep -v grep | grep -v bash | wc -l`

if [[ $i > 0 ]]
then
  echo "Apache is running"
else
  echo "Starting Apache"
  apache2ctl start
fi