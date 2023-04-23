
SELECT COUNT(id) AS number,
strftime('%w', pickup_datetime) AS time
FROM uber_trips
WHERE pickup_datetime BETWEEN '2009-01-01' AND '2015-06-31'
GROUP BY time
ORDER BY number DESC
