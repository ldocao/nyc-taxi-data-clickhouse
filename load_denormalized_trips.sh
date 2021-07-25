#!/bin/bash

for filename in $HOME/nyc-taxi-data/denormalized/trips_x*.csv.gz; do
            gunzip -c $filename | \
                python trans.py | \
                clickhouse-client \
                    --query="INSERT INTO denormalized_trips FORMAT CSV" --password=ZiVAAPCLkGJQCAkTUoV4P
done