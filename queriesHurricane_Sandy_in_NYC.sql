
WITH hourly_data AS (
SELECT strftime ('%Y %m %d %H', DATE) AS date_hour, 
AVG(HourlyWindSpeed) AS hourly_wind_speed, 
AVG(HourlyPrecipitation) AS hourly_precipitation 
FROM hourly_weather
WHERE DATE BETWEEN '2012-10-22' AND '2012-11-05'
GROUP BY date_hour ),

hired_trips AS (
SELECT strftime ('%Y %m %d %H', pickup_datetime) AS pick_up_date_hour,
    distance
    FROM taxi_trips
    WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-05'
    UNION ALL
    SELECT strftime ('%Y %m %d %H', pickup_datetime) AS pick_up_date_hour,
    distance
    FROM uber_trips
    WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-05'
)

SELECT hd.date_hour as date, 
COALESCE(COUNT(ht.pick_up_date_hour),0) AS num, 
hourly_wind_speed, 
hourly_precipitation
FROM hourly_data AS hd
LEFT JOIN hired_trips AS ht
ON hd.date_hour = ht.pick_up_date_hour
GROUP BY hd.date_hour
