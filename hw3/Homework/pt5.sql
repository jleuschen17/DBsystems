SELECT f3.dest_city
FROM flights_small f, flights_small f2, flights_small f3
WHERE f.origin_city = 'Seattle WA'
AND f.dest_city = f2.origin_city
AND f2.dest_city != 'Seattle WA'
AND f2.dest_city = f3.origin_city
AND f3.origin_city NOT IN
(SELECT f5.dest_city
FROM flights_small f4, flights_small f5
WHERE f4.origin_city = 'Seattle WA'
AND f4.dest_city = f5.origin_city
AND f5.dest_city != 'Seattle WA'
GROUP BY f5.dest_city)