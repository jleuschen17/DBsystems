SELECT c.name, SUM(f.departure_delay) dep_delay
FROM flights_small f
JOIN Carriers C on C.cid = f.carrier_id
GROUP BY c.cid
ORDER BY dep_delay DESC