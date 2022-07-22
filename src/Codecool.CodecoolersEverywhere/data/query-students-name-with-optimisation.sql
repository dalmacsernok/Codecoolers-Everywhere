UPDATE STATISTICS codecoolers WITH FULLSCAN;

SELECT first_name, last_name
FROM codecoolers
WHERE last_name = 'Ware' AND first_name = 'Selena';

