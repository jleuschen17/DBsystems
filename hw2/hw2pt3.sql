SELECT day_of_week, AVG(F.arrival_delay) as arrival_delay
FROM flights_small f
JOIN Weekdays W on f.day_of_week_id = W.did
GROUP BY W.did
ORDER BY arrival_delay DESC
LIMIT 1;
