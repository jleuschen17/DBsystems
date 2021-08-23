SELECT F.origin_city, F.dest_city, f.actual_time
FROM FLIGHTS F JOIN
(SELECT origin_city, max(actual_time) max from FLIGHTS
GROUP BY origin_city) t
ON t.origin_city = t.origin_city AND
f.actual_time = t.max