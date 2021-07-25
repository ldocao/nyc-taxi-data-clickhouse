#!/bin/bash

cd $HOME
chmod u+x install_clickhouse.sh
chmod u+x load_data.sh

nohup ./install_clickhouse.sh &

nohup gsutil -m cp -r gs://nyc-taxi-data/ $HOME/ 
nohup ./load_data.sh > load_data.log 2>&1 &
