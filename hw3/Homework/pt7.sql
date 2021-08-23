SELECT c.name
FROM FLIGHTS f
JOIN CARRIERS c
ON f.carrier_id = c.cid
WHERE f.origin_city = 'Seattle WA'
AND f.dest_city = 'San Francisco CA'
GROUP BY  c.name