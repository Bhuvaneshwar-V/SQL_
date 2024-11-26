USE fantasy;

-- five rows only

SELECT name, class, level
FROM fantasy.characters
where is_alive = "TRUE"
LIMIT 5;

-- order by level column and 5 rows only

SELECT name, class, level
FROM fantasy.characters
where is_alive = "TRUE"
ORDER BY level
LIMIT 5;