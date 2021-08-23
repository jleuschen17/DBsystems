SELECT c.name, MAX(f.price) maxticket
FROM flights_small f
JOIN Carriers c ON f.carrier_id = c.cid
WHERE f.origin_city = 'Seattle WA'
AND f.dest_city = 'New York NY'
OR f.origin_city = 'New York NY'
AND f.dest_city = 'Seattle WA'
GROUP BY c.cid
ORDER BY maxticket