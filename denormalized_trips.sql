CREATE TABLE denormalized_trips (
    trip_id                 UInt32,
    vendor_id               String,

    pickup_datetime         DateTime,
    dropoff_datetime        Nullable(DateTime),

    store_and_fwd_flag      Nullable(FixedString(1)),
    rate_code_id            Nullable(UInt8),
    pickup_longitude        Nullable(Float64),
    pickup_latitude         Nullable(Float64),
    dropoff_longitude       Nullable(Float64),
    dropoff_latitude        Nullable(Float64),
    passenger_count         Nullable(UInt8),
    trip_distance           Nullable(Float64),
    fare_amount             Nullable(Float32),
    extra                   Nullable(Float32),
    mta_tax                 Nullable(Float32),
    tip_amount              Nullable(Float32),
    tolls_amount            Nullable(Float32),
    ehail_fee               Nullable(Float32),
    improvement_surcharge   Nullable(Float32),
    total_amount            Nullable(Float32),
    payment_type            Nullable(String),
    trip_type               Nullable(UInt8),

    precipitation           Nullable(Int8),
    snow_depth              Nullable(Int8),
    snowfall                Nullable(Int8),
    max_temperature         Nullable(Int8),
    min_temperature         Nullable(Int8),
    average_wind_speed      Nullable(Int8)
) ENGINE = Log;