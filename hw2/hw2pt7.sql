SELECT SUM(f.capacity)
FROM flights_small f
WHERE f.origin_city = 'Seattle WA'
AND f.dest_city = 'San Francisco CA'
OR f.origin_city = 'San Francisco CA'
AND f.dest_city = 'Seattle WA'


