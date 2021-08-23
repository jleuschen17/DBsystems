SELECT distinct F.origin_city city
FROM FLIGHTS F JOIN
(SELECT origin_city, max(actual_time) max FROM FLIGHTS
GROUP BY origin_city) t
ON t.origin_city = F.origin_city and
   f.actual_time = t.max
where f.actual_time < 180.0