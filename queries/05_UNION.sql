USE fantasy;

-- UNION

SELECT * FROM fantasy.characters_alive
UNION DISTINCT
SELECT * FROM fantasy.characters_dead;

-- UNION ALL/DISTINCT Difference

-- UNION ALL - gives the duplicate rows aswell
-- UNION DISNTINCT - gives only the non-duplicate rows

-- combining items and characters with same datatype columns

SELECT id, name, item_type, power, date_added
FROM fantasy.items
UNION DISTINCT
SELECT id, name, class, level, last_active
FROM fantasy.characters;

-- combining with the datatype converted columns since, we can't combine the different datatype columns

SELECT id, name, item_type, power, date_added, rarity
FROM fantasy.items
UNION DISTINCT
SELECT id, name, class, level, last_active, CAST(experience AS CHAR)
FROM fantasy.characters;