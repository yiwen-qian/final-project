
WITH all_trips AS (
    SELECT DATE(pickup_datetime) AS pickup_date, 
    distance
    FROM taxi_trips
    UNION ALL
    SELECT DATE(pickup_datetime) AS pickup_date, 
    distance
    FROM uber_trips
),

windiest_days AS (
    SELECT DATE(DATE) AS wind_date,
    DailyWindSpeed
    FROM daily_weather
    WHERE wind_date BETWEEN '2014-01-01' AND '2015-01-01'
    ORDER BY DailyWindSpeed DESC
    LIMIT 10
)

SELECT w.wind_date,
COUNT(*)
FROM windiest_days AS w,all_trips AS a
WHERE w.wind_date == a.pickup_date
GROUP BY w.wind_date
