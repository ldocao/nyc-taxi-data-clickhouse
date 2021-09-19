for filename in $HOME/nyc-taxi-data/normalized/trips_x*.csv.gz; do
    gunzip -c $filename | \
        python3 trans.py | \
        clickhouse-client \
            --query="INSERT INTO normalized_trips FORMAT CSV" --password=ZiVAAPCLkGJQCAkTUoV4P
done