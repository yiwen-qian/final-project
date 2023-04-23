
WITH all_trips AS (
    SELECT pickup_datetime, distance
    FROM taxi_trips
    WHERE pickup_datetime BETWEEN '2009-01-01' AND '2010-01-01'
    UNION ALL
    SELECT pickup_datetime, distance
    FROM uber_trips
    WHERE pickup_datetime BETWEEN '2009-01-01' AND '2010-01-01'
)
SELECT DATE(pickup_datetime) AS day,
AVG(distance) AS average_dis,
COUNT(*) AS number
FROM all_trips
GROUP BY DATE(pickup_datetime)
ORDER BY number DESC
LIMIT 10
