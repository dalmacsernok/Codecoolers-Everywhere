SELECT id, last_name, first_name, birth_year, birth_city_id 
FROM codecoolers
WHERE NOT EXISTS
(
SELECT cc.id
FROM codecoolers AS cc
JOIN codecoolers_schools AS cs ON
(cc.id = cs.codecooler_id)
JOIN schools AS s ON (s.id = cs.school_id)
WHERE cc.birth_city_id = s.city_id
AND codecoolers.id = cc.id
);