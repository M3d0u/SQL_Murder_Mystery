
SELECT * FROM crime_scene_report
WHERE date like "20180115"
and city LIKE "SQL City";

SELECT * FROM
(SELECT * FROM person 
WHERE name LIKE "Annabel%"
AND address_street_name LIKE "Franklin Ave")
UNION
SELECT * FROM
(SELECT * FROM person 
WHERE address_street_name LIKE "Northwestern Dr" 
ORDER BY address_number DESC LIMIT 1);

SELECT * FROM interview 
WHere person_id like "14887"
OR person_id like "16371";

SELECT * FROM get_fit_now_member 
INNER join get_fit_now_check_in ON membership_id = get_fit_now_member.id
INNER JOIN person ON person.id = get_fit_now_member.person_id
INNER JOIN drivers_license ON person.license_id = drivers_license.id
WHERE get_fit_now_member.id like "48Z%"
AND membership_status like "gold"
And check_in_date like "20180109"
AND plate_number like "%H42W%";

SELECT * FROM interview 
WHERE person_id LIKE "67318";

SELECT * FROM drivers_license 
INNER JOIN person ON person.license_id = drivers_license.id
INNER JOIN facebook_event_checkin ON person.id = facebook_event_checkin.person_id
WHERE 65 < height < 67
AND hair_color LIKE 'red'
AND car_make LIKE 'Tesla'
AND event_name like 'SQL Symphony Concert';
