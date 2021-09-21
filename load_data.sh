#!/bin/bash

chmod u+x load_denormalized_trips.sh
chmod u+x load_normalized_trips.sh
chmod u+x load_normalized_weather.sh

sudo service clickhouse-server restart
nohup ./load_denormalized_trips.sh & 
nohup ./load_normalized_trips.sh & 
nohup ./load_normalized_weather.sh &

wait

clickhouse-client --multiquery --queries-file=normalized_trips_mergetree_date.sql 
clickhouse-client --multiquery --queries-file=normalized_trips_mergetree_trip.sql 