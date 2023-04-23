
CREATE TABLE IF NOT EXISTS hourly_weather
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    HourlyPrecipitation FLOAT,
    HourlyWindSpeed FLOAT,
    YEAR INTEGER,
    MONTH INTEGER,
    DAY INTEGER,
    HOUR INTEGER
);

CREATE TABLE IF NOT EXISTS daily_weather
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    DailyWindSpeed FLOAT,
    DailyPrecipitation FLOAT,
    YEAR INTEGER,
    MONTH INTEGER,
    DAY INTEGER,
    HOUR INTEGER
);

CREATE TABLE IF NOT EXISTS taxi_trips
(
    id INTEGER PRIMARY KEY,
    tip_amount FLOAT,
    pickup_datetime DATE,
    year INTEGER,
    month INTEGER,
    day INTEGER,
    hour INTEGER,
    minute INTEGER,
    dropoff_datetime DATE,

    PULocationID INTEGER,
    DOLocationID INTEGER,
    fare_amount FLOAT,
    pickup_latitude FLOAT,
    pickup_longitude FLOAT,
    dropoff_latitude FLOAT,
    dropoff_longitude FLOAT,
    distance FLOAT
);

CREATE TABLE IF NOT EXISTS uber_trips
(
    id INTEGER PRIMARY KEY,
    fare_amount FLOAT,
    pickup_datetime DATETIME,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    distance FLOAT,
    year INTEGER,
    month INTEGER,
    day INTEGER,
    hour INTEGER,
    minute INTEGER,
    dayofweek INTEGER
);

CREATE TABLE IF NOT EXISTS sunrise_data
(
    id INTEGER PRIMARY KEY,
    DATE TEXT,
    Sunrise TEXT,
    Sunset TEXT,
    YEAR INTEGER,
    MONTH INTEGER,
    DAY INTEGER,
    HOUR INTEGER,
    Sunrise_Hour INTEGER,
    Sunrise_Minute INTEGER,
    Sunset_Hour INTEGER,
    Sunset_Minute INTEGER
)
