SELECT F.flight_num
FROM flights_small as F
WHERE origin_city == 'Seattle WA' AND
      dest_state == 'Boston MA' AND
      carrier_id =='AS' AND
      day_of_week_id == 1;


SELECT F.flight_num
FROM flights_small as F
WHERE F.origin_city == 'Seattle WA' AND
      F.dest_city == 'Boston MA' AND
      F.carrier_id == 'AS' AND
      F.day_of_week_id == 1;

SELECT count(*)
FROM flights_small