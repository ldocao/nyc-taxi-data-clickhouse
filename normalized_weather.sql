CREATE TABLE normalized_weather (
    date        Date,
    precipitation           Nullable(Float32),
    snow_depth              Nullable(Float32),
    snowfall                Nullable(Float32),
    max_temperature         Nullable(Int8),
    min_temperature         Nullable(Int8),
    average_wind_speed      Nullable(Float32)
) ENGINE = Log;