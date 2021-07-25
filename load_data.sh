#!/bin/bash

chmod u+x load_denormalized_trips.sh
chmod u+x load_normalized_trips.sh
chmod u+x load_normalized_weather.sh


nohup ./load_denormalized_trips.sh 
nohup ./load_normalized_trips.sh 
nohup ./load_normalized_weather.sh 