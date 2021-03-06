#!/bin/bash

for filename in $HOME/nyc-taxi-data/normalized/weather_x*.csv.gz; do
            gunzip -c $filename | \
                python3 trans.py | \
                clickhouse-client \
                    --query="INSERT INTO normalized_weather FORMAT CSV" 
done