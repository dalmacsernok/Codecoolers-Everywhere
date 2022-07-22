SELECT first_name, last_name, COUNT(*) AS counter
FROM dbo.codecoolers
GROUP BY first_name, last_name
HAVING COUNT(*)>1
ORDER BY counter DESC;