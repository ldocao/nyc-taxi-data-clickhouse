#!/bin/bash

for filename in $HOME/nyc-taxi-data/trips_x*.csv.gz; do
            gunzip -c $filename | \
                python trans.py | \
                clickhouse-client \
                    --query="INSERT INTO trips FORMAT CSV" --password=ZiVAAPCLkGJQCAkTUoV4P
done