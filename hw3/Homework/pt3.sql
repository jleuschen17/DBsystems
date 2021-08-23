SELECT F.origin_city,
((CAST((SELECT COUNT(fid)
FROM FLIGHTS F1
WHERE (F1.actual_time < 180.0 AND F1.origin_city = F.origin_city)
OR (F1.actual_time IS NULL AND F1.origin_city = F.origin_city)) AS float) / CAST((count(fid)) AS float)) * 100) count
FROM FLIGHTS F
GROUP BY origin_city
