#!/bin/bash

cd $HOME
nohup source install_clickhouse.sh &
nohup gsutil -m cp -r gs://nyc-taxi-data/ $HOME/ 
chmod u+x load_data.sh
nohup ./load_data.sh > load_data.log 2>&1 &
