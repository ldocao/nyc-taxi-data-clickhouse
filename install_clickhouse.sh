#!/bin/bash

PASSWORD=ZiVAAPCLkGJQCAkTUoV4P
sudo apt-get install apt-transport-https ca-certificates dirmngr
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4

echo "deb https://repo.clickhouse.tech/deb/stable/ main/" | sudo tee \
    /etc/apt/sources.list.d/clickhouse.list
sudo apt-get update

echo $PASSWORD | sudo apt-get install -y clickhouse-server clickhouse-client

sudo service clickhouse-server start
clickhouse-client --multiquery --queries-file=denormalized_trips.sql --password=$PASSWORD
clickhouse-client --multiquery --queries-file=normalized_trips.sql --password=$PASSWORD
clickhouse-client --multiquery --queries-file=normalized_weather.sql --password=$PASSWORD
clickhouse-client --multiquery --queries-file=normalized_trips_mergetree.sql --password=$PASSWORD
sudo touch '/var/lib/clickhouse/flags/force_drop_table' && sudo chmod 666 '/var/lib/clickhouse/flags/force_drop_table' #enable drop of table greater than 50GB