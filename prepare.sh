#!/bin/bash

cd $HOME
nohup source install_clickhouse.sh &
nohup gsutil -m cp -r gs://nyc-taxi-data/ $HOME/ 
