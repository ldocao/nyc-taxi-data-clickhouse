CREATE TABLE normalized_weather (
    date        Date,
    precipitation           Nullable(Int8),
    snow_depth              Nullable(Int8),
    snowfall                Nullable(Int8),
    max_temperature         Nullable(Int8),
    min_temperature         Nullable(Int8),
    average_wind_speed      Nullable(Int8),

) ENGINE = Log;