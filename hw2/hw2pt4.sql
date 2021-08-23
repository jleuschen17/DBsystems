SELECT c.name
FROM flights_small f
JOIN Carriers c on f.carrier_id = c.cid
JOIN Months M on f.month_id = M.mid
GROUP BY f.day_of_month, m.month, c.name
HAVING COUNT(*) > 1000;