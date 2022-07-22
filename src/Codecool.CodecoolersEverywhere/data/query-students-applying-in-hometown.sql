SELECT c.id, c.first_name, c.last_name, c.birth_year, c.birth_city_id
FROM dbo.codecoolers c
JOIN dbo.codecoolers_schools s ON c.id = s.codecooler_id
JOIN dbo.schools d ON d.id = s.school_id
WHERE c.birth_city_id = d.city_id
GROUP BY c.id, c.first_name, c.last_name, c.birth_year, c.birth_city_id;