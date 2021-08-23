SELECT f2.dest_city
FROM FLIGHTS f1, FLIGHTS f2
WHERE f1.origin_city = 'Seattle WA'
AND f1.dest_city = f2.origin_city
AND f2.dest_city != 'Seattle WA'
GROUP BY f2.dest_city

SELECT f3.dest_city
    FROM FLIGHTS f3
    WHERE f3.origin_city = 'Seattle WA'
    GROUP BY f3.dest_city