SElECT
c.name,
f1.origin_city, f1.fid, f1.dest_city, f1.actual_time,
f2.origin_city, f2.fid, f2.dest_city, f2.actual_time,
f1.actual_time + f2.actual_time as total_flight_time
FROM flights_small f1 JOIN flights_small f2
ON f1.dest_city = f2.origin_city
AND f1.day_of_month = f2.day_of_month
AND f1.month_id = f2.month_id
AND f1.carrier_id = f2.carrier_id
JOIN Weekdays w ON f1.day_of_week_id = w.did
JOIN Carriers c on f1.carrier_id = c.cid
JOIN Months m on f1.month_id = m.mid
WHERE f1.origin_city = 'Seattle WA'
AND f1.day_of_month = 15
AND m.month = 'July'
AND total_flight_time < 420
AND f2.dest_city = 'Boston MA';