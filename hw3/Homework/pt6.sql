SELECT c.name
FROM FLIGHTS f JOIN
CARRIERS c ON f.carrier_id = c.cid
WHERE f.carrier_id IN (SELECT carrier_id
    FROM FLIGHTS
    WHERE f.origin_city = 'Seattle WA'
    AND f.dest_city = 'San Francisco CA')
GROUP BY c.name