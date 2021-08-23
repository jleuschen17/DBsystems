SELECT c.name, AVG(f.canceled) as canceled_percentage
FROM flights_small as f
JOIN Carriers c
ON c.cid = f.carrier_id
WHERE f.origin_city = 'Seattle WA'
GROUP BY c.cid
HAVING canceled_percentage > 0.005
ORDER BY canceled_percentage